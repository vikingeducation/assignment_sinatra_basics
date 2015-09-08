#!/usr/bin/env ruby
require 'sinatra'


get '/boss' do
  erb :boss_form
end


post '/boss' do
  greeting = params[:greeting].upcase
  erb :boss_response, :locals => { :greeting => greeting }
end


get '/rps' do
  erb :rps_choice
end


post '/rps' do
  @computer_choice = %w(Rock Paper Scissors).sample
  @player_choice = params[:player_choice]
  
  if @player_choice == "Rock" && @computer_choice == "Scissors"
    #player wins
    erb :rps_player_wins
  elsif @player_choice == "Paper" && @computer_choice == "Rock"
    #player wins
    erb :rps_player_wins
  elsif @player_choice == "Scissors" && @computer_choice == "Paper"
    #player wins
    erb :rps_player_wins
  elsif @player_choice == @computer_choice
    #tie
    erb :rps_tie
  else
    #computer wins
    erb :rps_computer_wins
  end
  
end