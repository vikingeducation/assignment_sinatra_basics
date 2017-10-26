require 'sinatra'
require 'sinatra/reloader' if development?
require 'erb'
require 'pry'

require './helpers/weapons_helper'
helpers WeaponsHelper

get '/' do
  erb :index
end

post '/' do
  human = params[:human_choice]
  computer = computer_choice
  winner = determine_winner(computer_weapon: computer, human_weapon: human)
  erb :verdict, locals: { human: human, computer: computer, winner: winner }
end