require 'sinatra'
require 'pry'
require 'erb'
require './helpers/rock_paper_scissors.rb'

helpers RockPaperScissorsHelper

get '/' do
  erb :index
end

post '/play' do
  choice = params[:choice]
  computer_choice = computer_select_move
  erb :result, locals: { choice: choice, computer_choice: computer_choice }
end