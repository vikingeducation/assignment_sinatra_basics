#app.rb

require 'sinatra'
require 'pry-byebug'

get '/boss' do
  erb :boss
end

post '/boss' do
  user_message = params[:message]

  erb :show_message, locals: {message: user_message}
end