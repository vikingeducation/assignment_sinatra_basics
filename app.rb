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