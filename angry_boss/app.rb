require 'sinatra'
require 'erb'


get '/boss' do
  erb :form_template
end

post '/boss' do
  msg = params[:message]
  erb :angry_template, locals: { your_msg: msg }
end
