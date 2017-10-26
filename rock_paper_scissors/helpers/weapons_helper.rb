require 'pry'
module WeaponsHelper


  WEAPONS_LIB = {
    'r' => 'Rock',
    'p' => 'Paper',
    's' => 'Scissors'
  }

  WEAPONS_SCORE = {
    ['r', 'p'] => 'You',
    ['p', 's'] => 'You',
    ['s', 'r'] => 'You'
  }

  def computer_choice
    WEAPONS_LIB.keys.sample
  end

  def determine_winner(computer_weapon:, human_weapon:)
    return "It's a tie." if computer_weapon == human_weapon
    WEAPONS_SCORE[ [computer_weapon, human_weapon] ] || 'The Computer'
  end

end
