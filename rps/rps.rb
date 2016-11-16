#!/usr/bin/env ruby

require 'sinatra'
require 'erb'
require 'sinatra/reloader'

helpers do 
  def random_choice
    ['rock', 'paper', 'scissors'].sample
  end

def determine_outcome
  #
end

end

get '/' do 
  erb :index

end



post '/results' do 
  user_choice = params[:choice]
 
  erb :results, locals:{ outcome: outcome }
end