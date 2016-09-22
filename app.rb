require 'sinatra'
require 'erb'

get '/boss' do
  erb :boss
end

post '/boss' do
  message = params[:message].upcase
  erb :show_message, locals: { message: message}
end
