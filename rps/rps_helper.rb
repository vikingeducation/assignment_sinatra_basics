module GameLogic

  HANDS = {"rock" => "scissors", 
            "paper" => "rock",
            "scissors" => "paper"}

  def determine_outcome(player_move, bot_move)

    outcome = "DRAW"

    if HANDS[player_move] == bot_move
      outcome = "VICTORY!"
    elsif HANDS[bot_move] == player_move
      outcome = "DEFEAT"
    end

    outcome

  end

end