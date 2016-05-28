module RPS

  MOVES = { "rock" => "scissors", "scissors" => "paper", "paper" => "rock" }

  def get_computer_move
    %w(rock paper scissors).sample
  end

  def check_result(human, computer)
    result = ""
    if human == computer
      result = "It's a tie! Both you and the computer chose #{human}."
    elsif MOVES[human] == computer
      result = "You win with #{human}. Computer chose #{computer}."
    else
      result = "Computer wins with #{computer}. You chose #{human}."
    end
    result
  end

end
