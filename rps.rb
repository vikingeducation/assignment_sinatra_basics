require 'sinatra'
require 'erb'
require_relative 'judge.rb'

helpers Gamejudge

get '/rpsgame' do
  erb :choice
end

post '/rpsgame' do
  choice = params[:choice].to_i
  output = win_lose(choice)
  erb :output, :locals => { :input => output }
end