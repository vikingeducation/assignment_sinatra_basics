require 'sinatra'
require 'erb'
require 'pry-byebug'

get "/" do
  redirect to("/rps")
end

get "/rps" do
  erb :rps
end

post "/rps" do
  erb :result
end
