require 'sinatra'

get '/boss' do
  erb :boss
end

post '/boss' do
  @message = params[:message]
  erb :response
end
