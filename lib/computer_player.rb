module RockPaperScissors
  class ComputerPlayer
    def self.make_throw
      Throw.new(Throw.random_throw)
    end
  end
end
