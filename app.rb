require 'sinatra'

get '/boss' do
  erb :boss, :locals=>{:input=>nil}
end

post '/boss' do
  input = params[:input]
  erb :boss, :locals=>{:input => input}
end

get '/rps' do
end

post '/rps' do
end