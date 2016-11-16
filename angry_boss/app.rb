#!/usr/bin/env ruby

require 'sinatra'
require 'sinatra/reloader'

get '/boss' do
  erb :form
end

post '/boss' do
  shouted = params[:words].upcase
  erb :convo, locals: { words: shouted }
end
