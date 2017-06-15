require 'sinatra'
require 'erb'

require_relative 'lib/computer_player'
require_relative 'lib/throw'

helpers do
  def score(human, computer)
    if human.tied?(computer)
      "You tied Computer. It's like kissing your sister."
    elsif human.beats?(computer)
      'You won! Congratulations'
    else
      "You lost! Maybe this isn't your game"
    end
  end
end

get '/boss' do
  erb :boss_input
end

post '/boss' do
  boss_says = "WHAT DO YOU MEAN, '#{params[:boss_say].upcase}'???? YOU'RE FIRED!!"
  erb :boss_output, locals: { boss_speak: boss_says }
end

### Begin Rock, Paper, Scissors
get '/rps/play' do
  erb :rps_new_game, locals: { conclusion: params[:conclusion]}
end

post '/rps/throw_down' do
  human_throw = RockPaperScissors::Throw.new(params[:throw])
  computer_throw = RockPaperScissors::ComputerPlayer.make_throw
  msg = score(human_throw, computer_throw)
  redirect to("/rps/play?conclusion=#{msg}")
end

