#!/usr/bin/env ruby
require 'sinatra'
require 'pry-byebug'

get '/' do
  erb :index
end

get '/boss' do
  erb :shout_form
end

post '/boss' do

  input = params[:say_string]

  erb :show_shout, locals: { input: input }
end
