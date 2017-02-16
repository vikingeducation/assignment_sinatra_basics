# app.rb 

# Practice with Sinatra

require 'sinatra'
require 'erb'

get '/angry_boss_form' do
  erb :angry_boss_form
end

post '/angry_boss_form' do
  angry_message = params[:message]
  erb :angry_boss_response, locals: {message: input_message}
end

get '/angry_boss_response' do
  erb :angry_boss_response
end

  
