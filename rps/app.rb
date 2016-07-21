require 'sinatra'
require './helpers/rps_game'

helpers RpsGame

get '/landing' do
  erb :landing

end

post '/landing' do
  move = params[:input]
  erb :results, locals: {move: move}
end
