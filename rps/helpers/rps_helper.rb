module RPSHelper
  def play(hand, ai_hand)
    # combinations wise, you have 1/3 win, 1/3 tie, 1/3 lose
    case ai_hand
    when 1
      "WIN"
    when 2
      "LOSE"
    when 3
      "TIE"
    end
  end
end
