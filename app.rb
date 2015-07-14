require 'sinatra'
require 'erb'

helpers do  #1 = rock, 2 = paper, 3 = scissors
  def play_rps(input)
    result = ""
    cpu = rand(1..3)
    if cpu == input 
      result = "tie"
    elsif cpu == 1 && input == 2
      result = "Computer played rock, you played paper , you win!"
    elsif cpu == 1 && input == 3
      result = "Computer played rock and you played scissors, you lose!"
    elsif cpu == 2 && input == 1
      result = "Computer played 
      
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
  erb :rps 
end

post '/rps' do
  input = params[:choice]
  text = play_rps(input)
  erb :rps

end


