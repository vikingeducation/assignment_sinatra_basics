require 'sinatra'

get '/' do
  "Hello, World!"
end

get '/boss' do
  erb :view
end

post '/boss' do
  input = params[:input].upcase
  rude_string = "WHAT DO YOU MEAN, '#{input}'???? YOU'RE FIRED!!"
  erb :view, :locals => { :rude_string => rude_string }
end

get '/rockpaperscissors' do
  erb :rps
end

post '/rockpaperscissors' do
  move = params[:move]
  outcome = "test"
  erb :rps, :locals => { :outcome => outcome }
end  