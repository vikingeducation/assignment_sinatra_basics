require 'sinatra'
require './helpers/trumpify_helper.rb'

helpers TrumpifyHelper


get '/boss' do
  erb :boss
end

post '/boss' do
  erb :boss_results, locals: { message: params[:message] }
end