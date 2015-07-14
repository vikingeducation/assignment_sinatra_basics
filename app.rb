require 'sinatra'

get '/' do
  "Hello, World!"
end

get '/boss' do
  # string=""
  # erb :view, :locals => { :string => string }
  erb :view
end

post '/boss' do
  input = params[:input].upcase
  @string = "WHAT DO YOU MEAN, '#{input}'???? YOU'RE FIRED!!"
  erb :view
  # erb :view
end

get '/rockpaperscissors' do
  erb :rps
end

post '/rockpaperscissors' do
  move = params[:move]
  @outcome = "test"
  erb :rps
end  