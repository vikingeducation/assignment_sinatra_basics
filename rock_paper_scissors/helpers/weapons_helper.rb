require 'pry'
module WeaponsHelper


  WEAPONS_LIB = {
    'r' => 'Rock',
    'p' => 'Paper',
    's' => 'Scissors'
  }

  WEAPONS_SCORE = {
    ['r', 'p'] => 'human',
    ['p', 's'] => 'human',
    ['s', 'r'] => 'human'
  }

  def computer_choice
    WEAPONS_LIB.keys.sample
  end

  def determine_winner(computer_weapon, human_weapon)
    return 'tie' if computer_weapon == human_weapon
    @weapons[ [computer_weapon, human_weapon] ] || 'computer'
  end

end
