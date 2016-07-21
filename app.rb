require 'sinatra'
require './helpers/trumpify_helper.rb'
require './helpers/rps_helpers.rb'

helpers TrumpifyHelper
helpers RPSHelpers

get '/boss' do
  erb :boss
end

post '/boss' do
  erb :boss_results, locals: { message: params[:message] }
end

get '/rps' do
  erb :rps
end

post '/rps' do
  erb :rps_result, locals: { player_move: params[:player_move] }
end