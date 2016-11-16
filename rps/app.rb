require 'sinatra'
require 'sinatra/reloader' if development?
require 'erb'
require './rps_helper.rb'

helpers GameLogic

get "/" do
  erb :game
end

post "/play" do

  player_move = params[:selection]
  bot_move = ["rock", "paper","scissors"].sample

  outcome = determine_outcome(player_move, bot_move)

  unless request.cookies['num_of_wins']
    response.set_cookie("num_of_wins", 0)
  else
    num_of_wins = request.cookies['num_of_wins']
    response.set_cookie('num_of_wins', num_of_wins + 1) if outcome == "VICTORY!"
  end

  erb :results, locals: {your_move: player_move, bot_move: bot_move, outcome: outcome}

end

###root
####form with rock-paper-sharpthing
####post request with input
####return win/loss/draw
####link back to root 