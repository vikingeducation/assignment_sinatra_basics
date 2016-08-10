require 'sinatra'
require 'pry-byebug'

get '/boss_form' do
  erb :boss_form
end

post '/boss_form' do
  greeting = params[:greet]
  erb :show_form, locals: { greet: greeting }
end
