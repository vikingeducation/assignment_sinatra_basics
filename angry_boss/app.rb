require 'sinatra'
require 'pry'
require 'erb'

get '/boss' do
  erb :boss_form
end

post '/boss' do
  greeting = params[:greeting]
  response = "WHAT DO YOU MEAN, '#{greeting.upcase}'???? YOU'RE FIRED!!"
  erb :boss_response, locals: { response: response }
end