require 'sinatra'
require 'sinatra/reloader' if development?
require 'erb'

get '/' do
  erb :landing
end

post '/boss' do
  yelling_text = params[:sentence]
  erb :yelling, locals: {  string: yelling_text }
end