require 'sinatra'
require 'pry'
require 'erb'

get '/' do
  erb :index
end