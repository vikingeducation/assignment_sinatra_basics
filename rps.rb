require 'sinatra'
require 'erb'

get '/' do
  erb :turn
end

post '/results' do
  move = params[:move]
  erb :results, :locals => {move: move}
end
