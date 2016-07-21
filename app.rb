#!/usr/bin/env ruby
require 'sinatra'
require 'erb'
require 'pry-byebug'
require './helpers/rps_helper.rb'

helpers RPSHelper

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

get '/rps' do
  redirect to('/')
end

post '/rps' do
  play = params[:play]
  erb :play, locals: { victory: game_winner(play)  }
end
