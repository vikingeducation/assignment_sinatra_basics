require 'sinatra'

get '/boss' do
  erb :view
end

post '/boss' do
  input = params[:input].upcase
  rude_string = "WHAT DO YOU MEAN, '#{input}'???? YOU'RE FIRED!!"
  erb :view, :locals => { :rude_string => rude_string }
end