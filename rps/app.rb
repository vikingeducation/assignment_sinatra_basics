require 'sinatra'
require 'erb'
require_relative 'helpers/rps_helper.rb'
helpers RPSHelper

get '/' do
  erb :form
end

post '/result' do
  hand = params[:hand]
  ai_hand = [1,2,3].sample
  outcome = play(hand, ai_hand)
  erb :result, :locals => {:outcome => outcome}
end

post '/' do
  redirect to('/')
end