require 'sinatra'
require 'erb'
require './helpers/angry_boss.rb'

helpers AngryBoss

get '/boss' do
  erb :angry_form
end

post '/boss' do
  message = shout(params[:message])
  erb :angry_boss, locals: {message: message}
end
