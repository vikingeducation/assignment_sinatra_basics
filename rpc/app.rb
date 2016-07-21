require 'sinatra'


get '/landing' do 
  erb :landing

end

post '/landing' do 
  move = params[:input]
  erb :results, locales: {move: move}

end