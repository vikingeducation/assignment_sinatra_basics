require 'sinatra'
require 'pry-byebug'

get '/rps' do
  erb :rps
end

post '/rps' do
  your_hand = params[:hand]
  ai_hand = ["rock", "paper", "scissors"].sample
  winner = winner(your_hand, ai_hand)
  erb :rps_winner, locals: {winner: winner, your_hand: your_hand, ai_hand: ai_hand}
end


helpers do
  def winner(player_hand, ai_hand)
    if (player_hand == ai_hand)
      return nil
    elsif ((player_hand == 'rock' && ai_hand == "scissors") ||
      (player_hand == 'paper' && ai_hand == "rock") ||
      (player_hand == 'scissors' && ai_hand == "paper"))
      return "You"
    else
      return "AI"
     end
  end
end