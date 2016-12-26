require 'sinatra'

get '/boss' do
  erb :say_sth
end

post '/boss_responds' do
  employee_input = params[:employee_input]
  erb :boss_responds, locals: { words: employee_input }
end