require 'sinatra'
require 'shotgun'
require 'pry-byebug'

# get '/' do
#   "Hello"
# end

get '/boss' do
  erb :input
end

post '/boss' do
  my_greeting = params[:greeting].to_s.upcase
  erb :output, locals: {greeting: my_greeting}
end
