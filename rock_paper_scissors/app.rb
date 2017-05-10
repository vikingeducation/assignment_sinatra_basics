require 'sinatra'
require 'erb'
require 'pry-byebug'

get "/" do
  redirect to("/choose")
end

get "/choose" do
  erb :choose
end

post "/choose" do
  erb :result
end
