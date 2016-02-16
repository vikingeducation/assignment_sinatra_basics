=begin
    Warmup: Angry Boss

  1. There should be a text field
  2. and a submit button.
  3. Anything you type into the submit button should be returned on a new page in 
    - all caps, with a rude message:

  Input: "Good morning"

  Output: "WHAT DO YOU MEAN, 'GOOD MORNING'???? YOU'RE FIRED!!"

  Input: "Today is Friday"

  Output: "WHAT DO YOU MEAN, 'TODAY IS FRIDAY'???? YOU'RE FIRED!!"

  This is an extremely beginner challenge in pure Ruby, but now you need to think about getting your that takes an input and returns an output.

  1. Create your app.rb file and set up Sinatra. (DONE)

  2. There should be a get /boss route that shows you the form (DONE)

  3. There should be a post /boss route that takes the information, processes it, then redirects you to a template that shows you the response.

  Tips: Use Binding.pry!

  You can use the binding.pry command in Sinatra just like you would in any other Ruby app. As long as you include pry-byebug in your Gemfile and require 'pry-byebug' in your main Sinatra application file, you will be able to debug as normal.

  The only difference is that, when the binding.pry line gets hit in your code, your server will stop and give you the REPL to work with (it's running your Sinatra app after all).
=end

require 'sinatra'

get '/' do
  redirect '/boss'
end

get '/boss' do
  erb :boss
end

post '/boss' do
  erb :message, locals: { message_upcased: params[:message].upcase }
end
