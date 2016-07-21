#!/usr/bin/env ruby

require "pry"
require "sinatra"

get "/" do
  erb :hello
end

get "/boss" do
  erb :boss
end

post "/boss" do
  erb :response
end
