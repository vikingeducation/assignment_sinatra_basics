#shebang
#!/usr/bin/env ruby

require 'sinatra'
require_relative 'gamecore.rb'

helpers GameCore 

get '/game' do

  erb :game

end

post '/end' do
  answer = params[:choice]
  result = find_winner(answer)

  erb :results, :locals => { :result => result }
end

post '/game' do
  erb :game
end