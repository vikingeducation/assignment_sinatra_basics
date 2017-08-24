#!/usr/bin/env ruby
require 'sinatra'
require 'pry-byebug'

get '/' do
  "<h1>Hello, World</h1>"
end

get '/boss' do
  erb :boss_form
end

post '/boss' do
  boss = params[:input]

  erb :show_boss, locals: { input: boss }
end

get '/rps' do
  erb :rps
end

post '/rps' do
  @player = params[:rps]
  rps_computer
  rps_win

  erb :reveal_rps, locals: { 
    player: @player, 
    computer: @computer, 
    outcome: @outcome 
  }
end

def rps_computer
  r = rand(1...3)

  if r == 1
    @computer = "rock"
  elsif r == 2
    @computer = "paper"
  elsif r == 3
    @computer = "scissors"
  else
    raise "Some nonsense happened."
  end
    
end

def rps_win
  if (@computer == "rock" && @player == "rock") || 
    (@computer == "paper" && @player == "paper") || 
    (@computer == "scissors" && @player == "scissors")
    @outcome = "tie"
  elsif (@computer == "rock" && @player == "paper") || 
    (@computer == "scissors" && @player == "rock") || 
    (@computer == "paper" && @player == "scissors")
    @outcome = "player win"
  elsif (@computer == "paper" && @player == "rock") || 
    (@computer == "rock" && @player == "scissors") || 
    (@computer == "scissors" && @player == "paper")
    @outcome = "computer win"
  else
    raise "Win can't be determined"
    @outcome = "Program failure"
  end
end
