require "sinatra"
require "erb"

class RockPaperScissors
  attr_accessor :moves

  def initialize
    @moves = {1 => "rock", 2 => "paper", 3 => "scissors"}
  end

  def rock_rules m2
    if m2 == 2
      "Lose"
    else
      "Win"
    end
  end

  def paper_rules m2
    if m2 == 1
      "Win"
    else
      "Lose"
    end
  end

  def scissors_rules m2
    if m2 == 1
      "Lose"
    else
      "Win"
    end
  end

  def winner m1, m2
    if m1 == m2
      "Draw"
    elsif m1 == 1
      rock_rules(m2)
    elsif m1 == 2
      paper_rules(m2)
    else
      scissors_rules(m2)
    end
  end

  def make_move
    rand(1..3)
  end

  def translate_move move
    moves[move]
  end

end

get "/rps" do
  player_move = nil
  locals = {locals: {player_move: player_move}}
  erb :rps, locals
end

post "/rps" do
  rps = RockPaperScissors.new
  player_move, ai_move = params[:move].to_i, rps.make_move
  result = rps.winner(player_move, ai_move)
  player_move, ai_move = [player_move, ai_move].map{ |m| rps.translate_move(m) }
  locals = {locals: {player_move: player_move, ai_move: ai_move, result: result}}
  erb :rps, locals
end
