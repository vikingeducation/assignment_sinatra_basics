require 'sinatra'
require 'erb'

get '/' do
  erb :boss
end

post '/boss' do
  input = params[:output].upcase
  erb :output, locals: {input: input}
end