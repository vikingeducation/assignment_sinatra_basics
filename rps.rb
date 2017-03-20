require "sinatra"
require "erb"

class RockPaperScissors
  attr_accessor :moves

  def initialize
    @moves = {1 => "rock", 2 => "paper", 3 => "scissors"}
  end

  def lose
    "You Lose"
  end

  def win
    "You Win"
  end

  def draw
    "Draw"
  end

  def rock_rules m2
    m2 == 2 ? lose : win
  end

  def paper_rules m2
    m2 == 1 ? win : lose
  end

  def scissors_rules m2
    m2 == 1 ? lose : win
  end

  def winner m1, m2
    case m1
    when m2
      draw
    when 1
      rock_rules(m2)
    when 2
      paper_rules(m2)
    when 3
      scissors_rules(m2)
    end
  end

  def make_move
    rand(1..3)
  end

  def translate_move move
    moves[move]
  end

  def play(player_move)
    ai_move = make_move
    result = winner(player_move, ai_move)
    [translate_move(player_move), translate_move(ai_move), result]
  end

end

get "/rps" do
  player_move = nil
  locals = {locals: {player_move: player_move}}
  erb :rps, locals
end

post "/rps" do
  rps = RockPaperScissors.new
  player_move, ai_move, result = rps.play(params[:move].to_i)
  locals = {locals: {player_move: player_move, ai_move: ai_move, result: result}}
  erb :rps, locals
end
