require 'sinatra'
require 'erb'

get '/bosstalk' do
  erb :input
end

post '/bosstalk' do
  words = params[:give_message]
  erb :boss, :locals => { :input => words }
end