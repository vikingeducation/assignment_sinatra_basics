module RpsGame

  OPTIONS = [:rock, :paper, :scissors]
  WINS = {rock: :scissors, paper: :rock, scissors: :paper}

  def results(input)
    comp = comp_move
    if WINS[input.to_sym] == comp
      return "you win! computer chose #{comp}"
    elsif input.to_sym == comp
      return "tie, you both chose #{comp}"
    else
      return "you lose.. computer chose #{comp}"
    end
  end

  def comp_move
    OPTIONS.sample
  end
end
