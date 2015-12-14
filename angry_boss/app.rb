require 'sinatra'
require 'pry'
require 'erb'

get '/boss' do
  erb :boss_form
end