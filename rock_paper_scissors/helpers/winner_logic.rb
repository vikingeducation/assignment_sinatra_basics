module WinnerLogic

  def rock_case(comp_selection)
    case comp_selection
    when 'Rock'
      msg = "It's a Tie!"
    when 'Paper'
      msg = "Paper covers Rock: The Computer Wins!"
    when 'Scissors'
      msg = "Rock smashes Scissors: Victory is Yours!"
    end
    msg
  end

  def paper_case(comp_selection)
    case comp_selection
    when 'Paper'
      msg = "It's a Tie!"
    when 'Scissors'
      msg = "Scissors cut Paper: The Computer Wins!"
    when 'Rock'
      msg = "Paper covers Rock: Victory is Yours!"
    end
    msg
  end

  def scissors_case(comp_selection)
    case comp_selection
    when 'Scissors'
      msg = "It's a Tie!"
    when 'Rock'
      msg = "Rock smashes Scissors: The Computer Wins!"
    when 'Paper'
      msg = "Scissors cut Paper: Victory is Yours!"
    end
    msg
  end

  def determine_winner(comp_selection, user_selection)
    case user_selection
    when 'Rock'
      rock_case(comp_selection)
    when 'Paper'
      paper_case(comp_selection)
    when 'Scissors'
      scissors_case(comp_selection)
    end
  end

end
