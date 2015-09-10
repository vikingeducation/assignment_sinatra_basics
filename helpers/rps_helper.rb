module RPSHelper

  def ai_choice
    %w[rock paper scissors].sample
  end


  def compare(choices)

    winner = "draw" if choices[0] == choices[1]

    winning_combos = [ %w[rock scissors], %w[scissors paper], %w[paper rock] ]

    if winning_combos.include?(choices)
      winner = "player"
    else
      winner = "AI"
    end

    choices << winner

  end

end