#app.rb

require 'sinatra'
require 'pry-byebug'

get '/choice' do
  erb :choice
end

post '/choice' do
  user_choice = params[:option]
  computer_choice = ["rock", "paper", "scissors"].sample
  result = compare_choices(user_choice, computer_choice)

  if result == 1
    erb :win, locals: {user: user_choice, computer: computer_choice}
  elsif result == -1
    erb :lose, locals: {user: user_choice, computer: computer_choice}
  else
    erb :tie, locals: {user: user_choice, computer: computer_choice}
  end
end 

def compare_choices(user, computer)
   winners = { "rock" => "scissors", 
                      "paper" => "rock", 
                      "scissors" => "paper"   }
  if winners[user] == computer
    return 1
  elsif winners[computer] == user
    return -1
  else
    return 0
  end
end


