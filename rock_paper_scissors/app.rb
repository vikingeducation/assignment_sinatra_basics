require 'sinatra'
require 'erb'

helpers do

  def rock_case(comp_selection)
    case comp_selection
    when 'Rock'
      msg = "It's a Tie!"
    when 'Paper'
      msg = "The Computer Wins!"
    when 'Scissors'
      msg = "Victory is Yours!"
    end
    msg
  end

  def paper_case(comp_selection)
    case comp_selection
    when 'Paper'
      msg = "It's a Tie!"
    when 'Scissors'
      msg = "The Computer Wins!"
    when 'Rock'
      msg = "Victory is Yours!"
    end
    msg
  end

  def scissors_case(comp_selection)
    case comp_selection
    when 'Scissors'
      msg = "It's a Tie!"
    when 'Rock'
      msg = "The Computer Wins!"
    when 'Paper'
      msg = "Victory is Yours!"
    end
    msg
  end

  def determine_winner(comp_selection, user_selection)
    case user_selection
    when 'Rock'
      rock_case(comp_selection)
    when 'Paper'
      paper_case(comp_selection)
    when 'Scissors'
      scissors_case(comp_selection)
    end
  end

end


get '/game' do
  erb :start_game
end


post '/game' do
  options = ["Rock", "Paper", "Scissors"]
  comp_selection = options.sample
  user_selection = params[:move]
  who_won = determine_winner(comp_selection, user_selection)
  erb :winner, locals: { who_won: who_won, comp: comp_selection, user: user_selection }
end
