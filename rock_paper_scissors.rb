require 'sinatra' 
require 'sinatra/reloader'
require 'pry-byebug' 

helpers do

  CHOICES = [:rock, :paper, :scissors]
  BEATS = {
    :paper => :scissors,
    :rock => :paper,
    :scissors => :rock
  }

  def computer_choice
    CHOICES.sample
  end

  def win_check(user_input, computer_input)
    user_input = user_input.to_sym
    case user_input
    when :rock
      return "Win" if computer_input = BEATS[:rock]
    end
  end

end

get '/' do
  erb :rps_home
end

post '/rps' do
  user_choice = params[:rps]
  erb :rps_results, locals: {user_choice: user_choice}
end