#!/usr/bin/env ruby

require 'sinatra'

get '/boss' do 
  erb :boss
end

post '/boss_form' do 
  question = params[:user_input].upcase
  show_response = "WHAT DO YOU MEAN, #{question}????? YOU'RE FIRED!1!1"

  erb :show_response, locals: {response: show_response}
end

###############################################

get '/rps' do 
  erb :rps, :layout => :rps_layout
end

post '/rock_paper_scissors' do 
  user_choice = params[:rps]
  answers = {
    rock: 'paper',
    paper: 'scissor',
    scissor: 'rock'
  }
  # values defeat keys
  computer_choice = %w(rock paper scissor).sample
  if answers[user_choice] == computer_choice
    response = "Computer won! Comptuter picked #{computer_choice}, you picked #{user_choice}"
  elsif user_choice == computer_choice
    response = "It was a tie! You both picked #{user_choice}"
  else
    response = "YOU WON!Comptuter picked #{computer_choice}, you picked #{user_choice}"
  end

  erb :rps_result, :layout => :rps_layout, locals: {response: response}

end