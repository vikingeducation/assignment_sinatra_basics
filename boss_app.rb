#!/usr/bin/env ruby
require 'sinatra'
require 'sinatra/reloader'

get '/boss' do
  erb :boss_form
end

post '/boss' do
  message = params[:message]
  p params
  # Send that data to our view template explicitly
  # as the `name` variable
  erb :boss_response, :locals => { :message => message }
end
