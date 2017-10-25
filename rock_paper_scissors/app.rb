require 'sinatra'
require 'sinatra/reloader' if development?
require 'erb'
require 'pry'


get '/' do
  erb :index
end

post '/' do
  erb :verdict
end