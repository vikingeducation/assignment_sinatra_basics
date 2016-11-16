#!/usr/bin/env ruby
require 'sinatra'
require 'sinatra/reloader'

get '/' do
  erb :game
end

post '/result' do
  p params
end
