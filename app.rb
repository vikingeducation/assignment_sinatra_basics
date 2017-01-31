require 'sinatra'
require 'erb'

get '/' do
  erb :form
end

post '/boss' do
  input = params[:input]
  erb :response, :locals => { input: input}
end
