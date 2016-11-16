#!/usr/bin/env ruby
require 'sinatra'
require 'sinatra/reloader'

helpers do
  def method_name

  end
end

get '/' do
  erb :start
end

post '/results' do
  move = params[:move]
  erb :results, locals: { move: move }
end
