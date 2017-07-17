require 'sinatra'
require 'erb'
require './helpers/winner_logic.rb'

helpers WinnerLogic

get '/game' do
  erb :start_game
end


post '/game' do
  options = ["Rock", "Paper", "Scissors"]
  comp_selection = options.sample
  user_selection = params[:move]
  who_won = determine_winner(comp_selection, user_selection)
  erb :winner, locals: { the_winner: who_won, comp: comp_selection, user: user_selection }
end

post '/play_again' do
  erb :start_game
end
