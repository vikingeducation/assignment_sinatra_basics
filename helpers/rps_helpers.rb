module RPSHelpers

  def computer_move
    %w(r p s).sample
  end

  def who_won?(player_move, computer_move)
    winning_combos = {'r' => 's', 's' => 'p', 'p' => 'r'}
    if player_move == computer_move
      return "No one"
    else
      winner = winning_combos[player_move] == computer_move ? 'You' : 'Computer'
    end
  end

end