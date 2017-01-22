require 'sinatra'

get '/boss' do
  erb :message_form
end

post '/boss' do
  my_message = params[:message]
  erb :angry_boss, locals: { message: my_message }
end

get '/rps' do
  erb :rps_form
end

post '/rps' do
  my_choice = params[:choice]
  erb :rps_game, locals: { choice: my_choice }
end