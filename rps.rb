require 'sinatra'
require 'erb'
require_relative 'helpers/rpscheck.rb'

helpers RPSCheck

get '/' do
  erb :rps
end

post '/rpscheck' do
  output = check_winner(params[:choice].to_i)
  erb :end_game, :locals => { :winner => output }
end