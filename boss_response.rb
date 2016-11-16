require 'sinatra' 
require 'sinatra/reloader'
require 'pry-byebug' 

get '/' do 
  redirect to('/boss')
end

get '/boss' do 
  erb :boss, locals: { boss_response: params[:boss_response] } 
end

post '/boss' do 
  said = params[:say]
  boss_response = "WHAT DO YOU MEAN, '#{said.upcase}'???? YOU'RE FIRED!"
  # erb :boss, locals: { boss_response: boss_response }
  redirect to("/boss?boss_response=#{boss_response}")
  # for future reference - bad habit to render in post
  # good idea to send to a separate view or save to session hash
end

