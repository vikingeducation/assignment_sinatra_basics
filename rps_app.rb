require 'sinatra'

get '/' do
  erb :rps
end

post '/' do
  user_input = params[:move]
  erb :rps, :locals => { :user_input => user_input }
end
