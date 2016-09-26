require 'sinatra'
require 'erb'

helpers do
  def ai
    array = ['rock', 'paper', 'scissors']
    array.sample
  end

  def win?(ai, user)
    return true if ((ai == 'rock' && user == 'paper') || (ai == 'paper' && user == 'scissors') || (ai == 'scissors' && user == 'rock'))
  end

  def tie?(ai, user)
    return true if ((ai == 'rock' && player == 'rock') || (ai == 'paper' && player == 'paper') || (ai == 'scissors' && player == 'scissors'))
  end
end

get '/' do
  erb :rps
end

post '/' do
  user = params[:user]
  computer = ai
  erb :result, locals: {ai: computer, user: user}
end