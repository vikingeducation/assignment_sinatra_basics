require 'sinatra'
require 'pry-byebug'

helpers do
  def win? ai, player
    (ai == 'rock' && player == 'paper') ||
    (ai == 'paper' && player == 'scissor') ||
    (ai == 'scissor' && player == 'rock')
  end

  def lose? ai, player
    (ai == 'rock' && player == 'scissor') ||
    (ai == 'paper' && player == 'rock') ||
    (ai == 'scissor' && player == 'paper')
  end

  def even? ai, player
    (ai == 'rock' && player == 'rock') ||
    (ai == 'paper' && player == 'paper') ||
    (ai == 'scissor' && player == 'scissor') 
  end
end

get '/play' do
  erb :submit
end

post '/play' do
  choice = params[:decision]
  erb :result, locals: { choice: choice }
end
