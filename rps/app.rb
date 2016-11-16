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
    response.set_cookie('num_of_wins', num_of_wins.to_i + 1) if outcome == "VICTORY!"
  end

  win_display = request.cookies['num_of_wins'].to_i + 1
  win_display = request.cookies['num_of_wins'] unless outcome == "VICTORY!"
  win_display = 0 unless win_display
  win_display = 1 if outcome == "VICTORY!" && win_display == 0

  erb :results, locals: {your_move: player_move, bot_move: bot_move, 
                        outcome: outcome, wins: win_display}

end

###root
####form with rock-paper-sharpthing
####post request with input
####return win/loss/draw
####link back to root 

#win display = 0 if there are no cookies and no victory
#win display = 1 if there is victory and no cookie
#win diplay -= cookie if there is no victory
#wind display = cookie + 1 if there is victory 