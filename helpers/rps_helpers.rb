module RPSHelpers

  def computer_move
    %w(r p s).sample
  end

  def who_won?(player_move, computer_move)
    winning_combos = {'r' => 's', 's' => 'p', 'p' => 'r'}
    winner = winning_combos[player_move] == player_move ? 'You' : 'Computer'
  end

end