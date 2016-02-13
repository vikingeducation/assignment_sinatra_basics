=begin
  Rock-Paper-Scissors

  We promise this is the last time in Viking that you have to see this game!

  Use a similar structure as the "Shouting Boss" warmup to create a Rock-Paper-Scissors game, where

  1. You choose an option via radio button
  2. submit your choice
  3. and are redirected to an end screen where you see whether you won or lost vs the AI.
=end

require 'sinatra'

get '/rockpaperscissors' do
  erb :rps_play
end

post '/move' do
  players_move = params[:rps]
  moves = {0=>"ROCK",
           1=>"PAPER",
           2=>"SCISSORS"
          }
  computers_move = moves[rand(3)]
  erb :result, locals: { players_move: players_move, computers_move: computers_move}
end