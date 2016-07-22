require 'sinatra'
require 'erb'

helpers do
  def robot
    results = ["You win!", "You lose!", "It's a draw!"]
    return results[rand(3)]
  end

end

get '/' do

  erb :rps
end

post '/' do
  hand = params[:hand]
  response = robot
  "<h1>You chose #{hand}, #{response}</h1>"

end
