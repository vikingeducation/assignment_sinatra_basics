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

get '/rps' do 
  erb :rps
end

post '/rock_paper_scissors' do 
  user_choice = params[:rps]
  answers = {
    r: 'p',
    p: 's',
    s: 'r'
  }
  # values defeat keys
  computer_choice = %w(r p s).sample
  if answers[user_choice] == computer_choice
    puts "computer won"
  else

end