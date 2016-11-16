require 'sinatra' 
require 'sinatra/reloader'
require 'pry-byebug' 

enable :sessions

helpers do

  CHOICES = [:rock, :paper, :scissors]

  BEATS = {
    :paper => :scissors,
    :rock => :paper,
    :scissors => :rock
  }

  def get_computer_choice
    CHOICES.sample
  end

  def win_check(user_input, computer_input)
    user_input = user_input.to_sym
    return "You win" if user_input == BEATS[computer_input] 
    return "You lose" if computer_input == BEATS[user_input]
    "Tie" 
  end

end

get '/' do
  erb :rps_home
end

# get '/response' do 
#   erb :rps_results, locals: {
#     user_choice: session[:user_choice], 
#     computer_choice: session[:computer_choice],
#     result: session[:result]
#   }
# end

post '/rps' do
  user_choice = params[:rps]
  computer_choice = get_computer_choice
  result = win_check(user_choice, computer_choice)
  erb :rps_results, locals: { 
    user_choice: user_choice.to_s,
    computer_choice: computer_choice.to_s, 
    result: result 
  }
  # session[:user_choice] = user_choice.to_s,
  # session[:computer_choice] = computer_choice.to_s,
  # session[:result] = result
  # redirect to('/response')
end

# ASK IN SCRUM