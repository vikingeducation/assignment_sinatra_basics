module RockPaperScissorsHelper
  PLAYS = ['rock', 'paper', 'scissors', 'lizard', 'spock']
  WINS = [
    {pair: ['rock', 'scissors'], phrase: 'Rock crushes Scissors.'},
    {pair: ['rock', 'lizard'], phrase: 'Rock crushes Lizard.'},
    {pair: ['paper', 'rock'], phrase: 'Paper covers Rock.'},
    {pair: ['paper', 'spock'], phrase: 'Paper disproves Spock.'},
    {pair: ['scissors', 'paper'], phrase: 'Scissors cut Paper.'},
    {pair: ['scissors', 'lizard'], phrase: 'Scissors decapitate Lizard.'},
    {pair: ['lizard', 'spock'], phrase: 'Lizard poisons Spock.'},
    {pair: ['lizard', 'paper'], phrase: 'Lizard eats Paper.'},
    {pair: ['spock', 'scissors'], phrase: 'Spock smashes Scissors.'},
    {pair: ['spock', 'rock'], phrase: 'Spock vaporizes Rock.'}
  ]

  def computer_select_move
    PLAYS.sample
  end

  def get_winner(human, computer)
    if human == computer
      "It's a draw!  Let's try again!"
    else
      if which_winner(human, computer) == 1
        "You WIN!  #{get_result([human, computer])}"
      else
        "You lose.  :(  #{get_result([computer, human])}"
      end
    end
  end

  private

  def which_winner(human, computer)
    if WINS.any? { |win| win[:pair] == [human, computer] }
      1
    else
      2
    end
  end

  def get_result(moves)
    WINS.select{|win| win[:pair] == moves}.first[:phrase]
  end
end