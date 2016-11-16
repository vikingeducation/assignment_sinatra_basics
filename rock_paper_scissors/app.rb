require 'sinatra'
require 'sinatra/reloader'

get '/' do
  erb :get_move
end

post '/' do
  choices = {"rock" => "paper",
             "paper" => "scissors",
             "scissors" => "rock"}

  computer_choice = choices.keys.sample

  player_choice = params[:player_choice]
  result = ""
  if choices[player_choice] == computer_choice
    result = "win"
  elsif choices[computer_choice] == player_choice
    result = "lose"
  else
    result = "draw"
  end

  redirect to("/outcome?result=#{result}")

end

get '/outcome' do

  result = params[:result]

  erb :outcome, locals: { result: result }

end
