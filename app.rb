require 'sinatra'
require 'pry-byebug'

get '/boss' do
  erb :input
end

post '/boss' do
  my_input = params[:input]
  erb :output, locals: {input: my_input}
end