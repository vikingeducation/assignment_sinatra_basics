require 'sinatra'

get '/form' do 
  erb :form
end


post '/form' do 
  greeting = params[:input]

  erb :boss, locals: {greeting: greeting}
end