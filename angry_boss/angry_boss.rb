#!/usr/bin/env ruby

require 'sinatra'
require 'erb'
require 'sinatra/reloader'

get '/' do 
  erb :index


end



post '/' do 

  erb :angry_boss, locals: { text: params[:text]}

end