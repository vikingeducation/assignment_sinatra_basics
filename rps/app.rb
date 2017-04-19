require 'sinatra'
require 'shotgun'
require 'pry-byebug'

get '/game' do
  erb :move
end

post '/result' do
  player_move = params[:move].to_s
  comp_move = comp_choose
  victor = winner(player_move, comp_move)
  erb :results, locals: {player_move: player_move, comp_move: comp_move, victor: victor}
end


def comp_choose
  num_choice = rand(1..3)
  if num_choice ==1
    return "rock"
  elsif num_choice ==2
    return "paper"
  else
    return "scissors"
  end
end

def winner(player_choice, comp_choice )
  case player_choice
  when "rock"
    if comp_choice == "rock"
      return "It's a tie!"
    elsif comp_choice == "paper"
      return "I win!  Better luck next time."
    else
      return "You win!"
    end
  when "paper"
    if comp_choice == "rock"
      return "You win!"
    elsif comp_choice == "paper"
      return "It's a tie!"
    else
      return "I win!  Better luck next time."
    end
  when "scissors"
    if comp_choice == "rock"
      return "I win!  Better luck next time."
    elsif comp_choice == "paper"
      return "You win!"
    else
      return "It's a tie!"
    end
  end
end
