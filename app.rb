require './modules/helpers'
require 'sinatra'


helpers Helpers

get '/boss' do
  erb :boss, :locals=>{:input=>nil}
end

post '/boss' do
  input = params[:input]
  erb :boss, :locals=>{:input => input}
end

get '/rps' do
  erb :rps, locals: { result: nil }
end

post '/rps' do
  input = params[:rps_choices]
  result = win?(input) unless input.nil?
  erb :rps, locals: { result: result }
end