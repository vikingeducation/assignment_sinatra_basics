module GameHelper

  def computer_move
    computer = ["rock", "paper", "scissors"].sample
  end

  def determine_winner(move1, move2)
    winning_moves = {"rock" => "scissors", "scissors" => "paper", "paper" => "rock"}
    if winning_moves[move1] == move2
      [move1, 1]
    elsif winning_moves[move2] == move1
      [move2, 2]
    else
      nil
    end
  end

end