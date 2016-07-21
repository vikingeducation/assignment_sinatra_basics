module RPSHelper

  WINNING_COMBINATIONS = { "rock" => "scissors",
                           "paper" => "rock",
                           "scissors" => "paper" }
  OPTIONS = ["rock", "paper", "scissors"]

  def game_winner(play)
    computer = computer_pick
    if WINNING_COMBINATIONS[play] == computer
      "It looks like you have won"
    elsif play == computer
      "It looks like you have tied..."
    else
      "Well, you lost......"
    end
  end

  def computer_pick
    OPTIONS.sample
  end
end
