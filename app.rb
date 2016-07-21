require 'sinatra'

WINNER = {"rock" => "paper", "paper" => "scissors", "scissors" => "rock"}

helpers do
  def computer
    ["rock", "paper", "scissors"].sample
  end

  def winner(person, computer)

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
  @choice = params[:choice]
  erb :rps_response, locals: {choice: @choice}
end