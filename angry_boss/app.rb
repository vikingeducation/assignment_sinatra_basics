require 'sinatra'
require 'sinatra/reloader' if development?
require 'erb'
require 'pry'

require './helpers/boss_helper'
helpers BossHelper

get '/' do
  erb :index
end

post '/' do
  your_greeting = shout(params[:your_greeting])
  erb :boss_response, locals: { greeting: your_greeting }
end