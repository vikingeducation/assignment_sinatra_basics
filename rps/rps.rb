#!/usr/bin/env ruby

require 'sinatra'
require 'erb'
require 'sinatra/reloader'

helpers do
  def random_choice
    ['rock', 'paper', 'scissors'].sample
  end

def determine_outcome(choice1, choice2)
  winners = {"rock" => "scissors",
             "scissors" => "paper",
             "paper" => "rock"}

  if choice1 == choice2
    "Tie"
  elsif winners[choice1] == choice2
    "You Win!!!"
  else
    "I Win!!!"
  end
end

end

get '/' do
  erb :index

end



post '/results' do
  user_choice = params[:choice]

  computer_choice = random_choice
  outcome = determine_outcome(user_choice, computer_choice)

  erb :results, locals:{ outcome: outcome,
                         user_choice: user_choice,
                         computer_choice: computer_choice}
end
