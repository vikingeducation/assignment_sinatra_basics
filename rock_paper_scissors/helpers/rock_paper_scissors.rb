module RockPaperScissorsHelper
  PLAYS = ['rock', 'paper', 'scissors', 'lizard', 'spock']

  def computer_select_move
    PLAYS.sample
  end
end