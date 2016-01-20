require 'sinatra'
require './helpers/game_helper.rb'

helpers GameHelper


get '/' do
  erb :game_input
end

post '/' do
  human_move = params[:move]
  winner = determine_winner(human_move, computer_move)
  erb :result, :locals => { :winner => winner}
end