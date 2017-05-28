# ./app.rb
require 'sinatra'
# require 'pry-byebug'

# See how `get` is run as a method which takes
# the URL we want to route to it and a block
get '/boss_form' do
  erb :boss_form
end

post '/show_message' do
  # Grab the data we submitted from the form
  #   using the awesome `params` hash
  user_message = params[:msg].upcase
  # binding.pry

  # Send that data to our view template explicitly
  #   as the `name` variable
  erb :show_message, locals: { name: user_message }
  
end