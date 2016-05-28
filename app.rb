require 'sinatra'
require 'erb'
require './helpers/angry_boss.rb'
require './helpers/rps.rb'

helpers AngryBoss, RPS

get '/' do
  erb :index
end

get '/boss' do
  erb :angry_form
end

post '/boss' do
  message = shout(params[:message])
  erb :angry_boss, locals: {message: message}
end

get '/rps' do
  erb :play_rps
end

post '/rps' do
  human = params[:move]
  computer = get_computer_move
  result = check_result(human, computer)
  erb :rps_result, locals: {result: result}
end
