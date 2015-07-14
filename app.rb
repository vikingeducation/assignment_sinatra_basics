require 'sinatra'

get '/' do
  erb :angry_boss
end

post '/boss' do
  input = params[:input]
  response = "WHAT DO YOU MEAN, '#{input.upcase}'???? YOU'RE FIRED!!"
  erb :response, :locals =>{:response => response}
end