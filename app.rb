require 'sinatra'
require 'erb'

get '/' do
  erb :boss_form
end

post '/boss' do
  erb :boss, :locals => { :input => params[:user_input] }
end