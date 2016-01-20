require 'sinatra'

get '/boss' do
  erb :index
end
#Here root path is going to look in view and then index folder.
#Line 4 is what we serve back to the user.

post '/boss' do
  input = params[:prompt]
  erb :output, :locals => {:blah => input}
end

#post, when use posts information to server, what do we do with it
#params, taking everything that's input and assigning them to a hash
#locals hash send to ERB to be able to use
#locals hash sets an ERB variable = whatever (usually a parameter of the user input)
##Anytime ERB needs a variable, you must use the locals hash