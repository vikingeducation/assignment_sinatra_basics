require 'sinatra'

WINNER = {"rock" => "paper", "paper" => "scissors", "scissors" => "rock"}

helpers do
  def computer
    ["rock", "paper", "scissors"].sample
  end

  def winner(person, computer)
    if person == computer
      :tie
    elsif WINNER[person] == computer
      :lose
    else
      :win
    end
  end
end

get '/angry_boss' do
  erb :angry_boss
end

post '/angry_boss' do
  @statement = params[:statement]
  erb :angry_boss_response, locals: {statement: @statement}
end

get '/rps' do
  erb :rps
end

post '/rps' do
  choice = params[:choice]
  computer_choice = computer
  outcome = winner(choice, computer_choice)
  erb :rps_response, locals: {choice: choice,
                              computer_choice: computer_choice,
                              outcome: outcome}
end
