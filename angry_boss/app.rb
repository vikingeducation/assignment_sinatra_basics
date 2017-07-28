#angry_boss app

require 'sinatra'
require 'erb'

get '/boss_form' do
  erb :boss_form
end

post '/boss_form' do
  words_to_boss = params[:words]
  erb :response, locals: {words_to_boss: words_to_boss.upcase}
end
