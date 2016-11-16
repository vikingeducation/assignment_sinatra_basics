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

  def cookie_handler(outcome)
    unless request.cookies['num_of_wins']
      response.set_cookie("num_of_wins", 0)
    else
      num_of_wins = request.cookies['num_of_wins']
      response.set_cookie('num_of_wins', num_of_wins.to_i + 1) if outcome == "VICTORY!"
    end

    win_display = request.cookies['num_of_wins'].to_i + 1
    win_display = request.cookies['num_of_wins'] unless outcome == "VICTORY!"
    win_display = 0 unless win_display
    win_display = 1 if outcome == "VICTORY!" && win_display == 0

    win_display

  end

end