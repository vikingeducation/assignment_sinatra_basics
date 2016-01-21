require 'sinatra'
require_relative 'helpers/rps_helper'

helpers RPSHelper

get '/' do
  erb :choose_form
end

post '/choose' do
  player_choice = params[:choice]
  computer_choice = random_throw
  result = decide_winner(player_choice, computer_choice)
  erb :results, locals: { player_choice: player_choice, computer_choice: computer_choice, result: result}
end
