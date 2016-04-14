module PsrLogic

  def computer_choice
    ["paper", "scissors", "rock"].sample
  end

  def compare( player, computer )
    compare_table = {
      "paper" => {
        "scissors" => "Loose",
        "paper" => "Tie",
        "rock" => "Win"
      },
      "scissors" => {
        "scissors" => "Tie",
        "paper" => "Win",
        "rock" => "Loose"
      },
      "rock" => {
        "scissors" => "Win",
        "paper" => "Loose",
        "rock" => "Tie"
      }
    }
    result = compare_table[ player ][ computer ]
  end
end