module RPSHelper

  WINNING_COMBINATIONS = { "rock" => "scissors",
                           "paper" => "rock",
                           "scissors" => "paper" }
  OPTIONS = ["rock", "paper", "scissors"]

  def game_winner(play)
    computer = computer_pick
    if WINNING_COMBINATIONS[play] == computer
      "you have won"
    elsif play == computer
      "you have tied..."
    else
      "well you lost......"
    end
  end

  def computer_pick
    OPTIONS.sample
  end
end
