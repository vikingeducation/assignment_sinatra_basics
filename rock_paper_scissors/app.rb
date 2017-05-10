require 'sinatra'
require 'erb'
require 'pry-byebug'

get "/" do
  redirect to("/rps")
end

get "/rps" do
  erb :rps
end

post "/rps" do
  player_move = params[:move]
  computer_move = ["rock", "paper", "scissors"].sample
  winner = nil

  if player_move == computer_move
    winner = :tie
  else
    if (player_move == "rock" && computer_move == "scissors") || (player_move == "scissors" && computer_move == "paper") || (player_move == "paper" && computer_move == "rock")
      winner = :player
    else
      winner = :computer
    end
  end

  erb :result, :locals => { :player_move => player_move, :computer_move => computer_move, :winner => winner }
end
