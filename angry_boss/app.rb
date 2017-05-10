require 'sinatra'
require 'erb'
require 'pry-byebug'

get "/boss" do
  erb :tell_boss
end

post "/boss" do
end
