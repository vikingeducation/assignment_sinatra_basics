require 'sinatra'


get '/boss' do
  erb :boss
end


post '/boss' do
  phrase = params[:phrase]
  erb :shout, :locals => { :phrase => phrase }
end