
class Computer

	def initialize

		@moves = ["rock", "paper", "scissors"]

	end

	def get_move

		@moves[rand(0..2)]

	end


end