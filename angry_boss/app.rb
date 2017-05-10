require 'sinatra'
require 'erb'
require 'pry-byebug'

get "/" do
  redirect to("/boss")
end

get "/boss" do
  erb :tell_boss
end

post "/boss" do
end
