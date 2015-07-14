require 'sinatra'
require './helpers/helpers.rb'

helpers Helpers

get '/boss' do
  erb :angry_boss
end

post '/boss' do
  input = params[:input]
  response = "WHAT DO YOU MEAN, '#{input.upcase}'???? YOU'RE FIRED!!"
  erb :response, :locals =>{:response => response}
end


get '/rps' do
  erb :rps

end

post '/rps' do
  input = params[:rps]
  "#{input}"
  erb :winner, :locals => {winner: check_winner(comp_move, input)}

end