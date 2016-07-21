module Helpers

  def win?(input)
    input = input.downcase
    win = { 'rock' => 'scissors', 'paper' => 'rock', 'scissors' => 'paper' }
    game_move = win.keys.sample
    if input == game_move
      "Tie. Computer chose #{game_move}"
    elsif win[input] == game_move
      "Win. Computer chose #{game_move} "
    else win[game_move] == input
      "Lose. Computer chose #{game_move}"
    end
  end

end

