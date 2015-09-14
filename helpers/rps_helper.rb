module RPSHelper
	def self.winner_of(shoot)
		player = shoot[:player]
		computer = shoot[:computer]
		rock = ['scissors', 'rock', 'paper']
		paper = ['rock', 'paper', 'scissors']
		scissors = ['paper', 'scissors', 'rock']
		winner = :computer
		hands = {
			'rock' => rock,
			'paper' => paper,
			'scissors' => scissors
		}
		winner = :player if hands[player].index(computer) < 1
		winner = :tie if hands[player].index(computer) == 1
		winner			
	end
end