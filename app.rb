require 'sinatra'
require 'erb'

helpers do  #1 = rock, 2 = paper, 3 = scissors
  def play_rps(input)
    input = input.to_i
    result = ""
    cpu = rand(1..3)
    if cpu == input
      result = "You played the same inputs! It's a tie!"
    elsif cpu == 1 && input == 2
      result = "Computer played rock, you played paper , you win!"
    elsif cpu == 1 && input == 3
      result = "Computer played rock, you played scissors, you lose..."
    elsif cpu == 2 && input == 1
      result = "Computer played paper, you played rock, you lose..."
    elsif cpu == 2 && input == 3
      result = "Computer played paper, you played scissors, you win!"
    elsif cpu == 3 && input == 1
      result = "Computer played scissors, you played rock, you win!"
    elsif cpu == 3 && input == 2
      result = "Computer played scissors, you played paper, you lose..."
    end
    return result
  end
end

get '/angry' do
  erb :angry , :locals => {:input => nil}
end

post '/angry' do
  input = params[:input]
  erb :angry , :locals => {:input => input}
end

get '/rps' do
  erb :rps, :locals => {:result => nil}
end

post '/rps' do
  input = params[:choice]
  text = play_rps(input)
  erb :rps, :locals => {:result => text}
end


