# Create a Rock-Paper-Scissors game, where you choose an option via radio button, submit your choice, and are redirected to an end screen where you see whether you won or lost vs the AI.

# ./app.rb
require 'sinatra'


get '/user_choice_form' do
  erb :user_choice_form
end


post '/game_result' do
  # Grab the data we submitted from the form
  #   using the awesome `params` hash
  user_option = params[:option].downcase

  ai_option = ["rock", "paper", "scissors"].sample
  final_result = ""

  if(ai_option == user_option )
    final_result = "You draw!"
  elsif(user_option == "rock" && ai_option == "scissors")
    final_result = "You won!"
  elsif(user_option == "paper" && ai_option == "rock")
    final_result = "You won!"
  elsif(user_option == "scissors" && ai_option == "paper")
    final_result = "You won!"
  else
    final_result = "You lose!"
  end

  puts "ai_option is #{ai_option} and user_option is #{user_option}"  

  # final_result = who_won(user_option.downcase, ai_option)

  # Send that data to our view template explicitly
  #   as the `name` variable
  erb :win_lose, locals: { name: final_result }
end
