#!/usr/bin/env ruby
# rps.rb

require 'sinatra'
require 'pry'

helpers do

  def determine_victor(computer_move, player_move)
    winning_move = {
      "Rock" => "Scissors",
      "Scissors" => "Paper",
      "Paper" => "Rock"
    }

    if player_move == computer_move
      draw
    else
      if computer_move == winning_move[player_move]
        player_win
      else
        player_lose
      end
    end
  end

  def draw
    "It's a draw!"
  end

  def player_win
    "You win!"
  end

  def player_lose
    "You lose!"
  end

end

get "/" do
  "Hello world!"
end

get "/game" do
  erb :move
end

post "/game" do
  player_move = params[:choice]
  computer_move = %w{Rock Paper Scissors}.sample
  message = determine_victor(computer_move, player_move)

  erb :outcome, :locals => {:player_move => player_move,
                            :message => message,
                            :computer_move => computer_move }
end

