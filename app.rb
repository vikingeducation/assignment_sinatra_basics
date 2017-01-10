# app.rb

require 'sinatra'

get '/boss' do
  erb :input_form
end

post '/boss' do
  input = params[:input]
  erb :show_response, locals: { input: input.upcase }
end