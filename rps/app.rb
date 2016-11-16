require 'sinatra'
require 'sinatra/reloader' if development?
require 'erb'

get "/" do
  erb :game
end

post "/play" do
  player_move = params[:selection]
  bot_move = ["rock", "paper","scissors"].sample
  hands = {"rock" => "scissors", 
            "paper" => "rock",
            "scissors" => "paper"}
  outcome = "DRAW"
  if hands[player_move] == bot_move
    outcome = "VICTORY!"
  elsif hands[bot_move] == player_move
    outcome = "DEFEAT"
  end
  erb :results, locals: {your_move: player_move, bot_move: bot_move, outcome: outcome}
end

###root
####form with rock-paper-sharpthing
####post request with input
####return win/loss/draw
####link back to root 