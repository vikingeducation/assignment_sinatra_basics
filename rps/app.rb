#!/usr/bin/env ruby
require 'sinatra'
require 'sinatra/reloader'

helpers do
  def ai_move_selector
    ['r', 'p', 's'].sample
  end

  def compare(player_move, ai_move)
    winners = { "r" => "s",
                "s" => "p",
                "p" => "r" }
    if winners[player_move] == ai_move
      winner = "Player" 
    elsif winners[ai_move] == player_move
      winner = "Computer" 
    else
      winner = "No one"
    end
    winner
  end
end

get '/' do
  erb :start
end

post '/results' do
  move = params[:move]
  ai_move = ai_move_selector
  winner = compare(move, ai_move)
  erb :results, locals: { move: move, ai_move: ai_move, winner: winner }
end
