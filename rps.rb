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

  "<h1>'#{result}'</h1>"
end