#!/usr/bin/env ruby
require 'sinatra'
require 'sinatra/reloader'

helpers do
  OUTCOMES = {  'rock' => 'scissors',
                'scissors' => 'paper',
                'paper' => 'rock' }

  def get_outcome(human, computer)
    if human == computer
      'Tie'
    elsif OUTCOMES[computer] == human
      'Computer wins!'
    else
      'You win!'
    end
  end

  def get_move
    OUTCOMES.keys.sample
  end
end


get '/' do
  erb :game
end

post '/result' do
  computer_move = get_move
  result = get_outcome( params[:move], computer_move )
  erb :result, locals: { result: result }
end
