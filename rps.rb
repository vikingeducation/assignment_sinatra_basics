# rps.rb


require 'sinatra'

require_relative 'computer'

require 'pry-byebug'
# rock paper scissors
	get "/rps" do

		erb :rps

	end
# have a web page that shows the prompt to select rock paper or sciccors and a submit button
	post '/show_rps' do

		player_move = params[ :move ]
		cpu_move = Computer.new.get_move



		erb :show_rps, locals: { move: player_move, cpu: cpu_move }

	end
# when players submit, the post will take the value

# the value will result in a win, loss or tie

