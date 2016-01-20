module RPSHelper
  WINNING_COMBINATIONS =
    { "Rock" => "Scissors",
      "Scissors" => "Paper",
      "Paper" => "Rock" }

  def random_throw
    ['Rock', 'Paper', 'Scissors'].sample
  end

  def decide_winner(player_choice, computer_choice)
    if player_choice == computer_choice
      "It's a draw!"
    elsif WINNING_COMBINATIONS[player_choice] == computer_choice
      "You win!"
    elsif WINNING_COMBINATIONS[computer_choice] == player_choice
      "The Computer wins!"
    end
  end
end

