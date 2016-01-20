require 'sinatra'

get '/boss' do
  erb :boss_form
end

post '/boss' do
  boss_message = "WHAT DO YOU MEAN, '#{params[:message].upcase}'????? YOU'RE FIRED!!"
  erb :boss_response, locals: { boss_message: boss_message}
end
