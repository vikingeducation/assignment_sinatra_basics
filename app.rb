require 'sinatra'
require 'erb'

get '/boss' do
  erb :boss_input
end

post '/boss' do
  boss_says = "WHAT DO YOU MEAN, '#{params[:boss_say].upcase}'???? YOU'RE FIRED!!"
  erb :boss_output, locals: { boss_speak: boss_says }
end

### Begin Rock, Paper, Scissors

