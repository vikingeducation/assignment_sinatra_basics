#!/usr/bin/env ruby

require 'sinatra'
require 'erb'

helpers do

  def ai

    ['r', 'p', 's'].sample

  end

  def find_winner(player_choice, ai_choice)

    if ai_choice == player_choice
      "Draw!"
    elsif ai_choice == 'r' && player_choice == 's' ||
          ai_choice == 'p' && player_choice == 'r' ||
          ai_choice == 's' && player_choice == 'p'
      "AI wins!"
    else
      "Player wins!"
    end

  end
end

get '/rps' do
  erb :show_rps
end

post '/play_rps' do

  choice = params[:player_input]

  ai_choice = ai

  response = find_winner(choice, ai_choice)

  full_words = {r: "Rock", p: "Paper", s: "Scissors"}

  erb :play_rps, :locals => {:response => response, :player_choice => full_words[choice.to_sym], :ai_choice => full_words[ai_choice.to_sym]}

end


