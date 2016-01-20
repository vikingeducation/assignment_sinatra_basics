
require 'sinatra'

get '/' do
  erb :index
end


post '/' do
  user_input = params[:user_input]
  erb :index, :locals => { :user_input => user_input }
end

get '/rps/' do
  
stuff

end