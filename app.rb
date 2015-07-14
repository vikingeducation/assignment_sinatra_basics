require 'sinatra'

get '/' do
  "Hello, World!"
end

get '/boss' do
  # string=""
  # erb :view, :locals => { :string => string }
  erb :view
end

post '/boss' do
  input = params[:input].upcase
  @string = "WHAT DO YOU MEAN, '#{input}'???? YOU'RE FIRED!!"
  erb :view
  # erb :view
end

get '/rockpaperscissors' do
  erb :rps
end

post '/rockpaperscissors' do
  @comp_move = %W[ rock paper scissors].sample
  @move = params[:input]
  redirect to('/rockpaperscissors/win')  if  (@move == "rock" && @comp_move == "scissors")  ||
                                             (@move == "scissors" && @comp_move == "paper") ||
                                             (@move == "paper" && @comp_move == "rock")

  redirect to('/rockpaperscissors/lose') if  (@move == "rock" && @comp_move == "paper")     ||
                                             (@move == "scissors" && @comp_move == "rock")  ||
                                             (@move == "paper" && @comp_move == "scissors")

  redirect to('/rockpaperscissors/draw') if  (@move == @comp_move)


  erb :rps_result
end

get '/rockpaperscissors/win' do
  erb :rps_win
end

get '/rockpaperscissors/lose' do
  erb :rps_lose
end

get '/rockpaperscissors/draw' do
  erb :rps_draw
end