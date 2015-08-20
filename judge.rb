module Gamejudge

  def win_lose(choice)
      enemy = Random.rand(1..3)
      result = enemy * choice
      return "that's a draw" if choice == enemy
      return "scissor win" if result == 6
      return "rock win" if result == 3
      return "paper win" if result == 2
  end

end