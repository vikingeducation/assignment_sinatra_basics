module RPSCheck

  def check_winner(choice)

    comp = Random.rand(1..3)
    result = comp * choice
    return "It's a draw!" if comp == choice
    return "Paper Wins!" if result == 2
    return "Rock Wins!" if result == 3
    return "Scissors Wins!" if result == 6

  end

end