require 'sinatra'
require 'erb'

require './helpers/helpers.rb'
helpers HelperMethods
# User chooses one of three options
# rock paper or scissors
# AI randomly outputs one of these items as well

get '/' do
  erb :main
end

post '/' do
  user = params[:user]
  erb :result, locals: { user: user }
end
