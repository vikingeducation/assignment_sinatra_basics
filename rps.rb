require 'sinatra'

require_relative 'computer'

require 'pry-byebug'

	get "/rps" do

		erb :rps

	end

	post '/show_rps' do

		player_move = params[ :move ]
		cpu_move = Computer.new.get_move

		result = outcome( player_move, cpu_move )

		erb :show_rps, locals: { move: player_move, cpu: cpu_move, result: result }

	end

	def outcome( player_move, cpu_move )

		return "It's a tie" if player_move == cpu_move

		if player_move == 'rock'

			return "You win!" if cpu_move == 'scissors'

			return "CPU wins!" if cpu_move == 'paper'

		elsif player_move == "paper"

			return "You win!" if cpu_move == 'rock'

			return "CPU wins!" if cpu_move == 'scissors'

		elsif player_move == "scissors"

			return "You win!" if cpu_move == 'paper'

			return "CPU wins!" if cpu_move == 'rock'

		end

	end

