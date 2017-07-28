# rps

require 'sinatra'
require 'erb'

get '/rps_form' do
  erb :rps_form
end

post '/rps_form' do
  p_num = params[:p_choice].to_i
  p_num = 0
    c_num = get_comp_num
    outcome_str = get_outcome(c_num, p_num)
  erb :outcome, locals: {player_choice: num_to_str(p_num), comp_choice: num_to_str(c_num), outcome_str: outcome_str}
end

def num_to_str(num)
  values = ["rock", "paper", "scissors"]
  values[num]
end

def get_comp_num
  rand(2)
end

def get_outcome(c_num, p_num)
  if p_num == c_num
    "It's a tie!"
  elsif p_num == 0 && c_num == 2
    "You win"
  elsif p_num - c_num == 1
    "You win"
  else
    "You lose"
  end
end
