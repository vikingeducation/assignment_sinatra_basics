# rps.rb


require 'sinatra'


# rock paper scissors
get "/rps" do

	erb :rps

end
# have a web page that shows the prompt to select rock paper or sciccors and a submit button

# when players submit, the post will take the value

# the value will result in a win, loss or tie

# 