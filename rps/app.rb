require 'sinatra'
require 'pry'

helpers do
  def determine_outcome(a, b)
    wins =[["paper","rock"], ["rock","scissors"], ["scissors","paper"]]
    if wins.include?([a, b])
      return "You won!"
    elsif wins.include?([b, a])
      return "You lost!"
    elsif a == b
      return "It's a tie!"
    end
  end
end

get '/rps' do
  erb :rps
end

post '/results' do
  player1_choice = params[:choice]
  player2_choice = %w(rock paper scissors).sample
  outcome = determine_outcome(player1_choice, player2_choice)
  erb :results, locals: { player1: player1_choice, player2: player2_choice, outcome: outcome }
end