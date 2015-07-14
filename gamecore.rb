
module GameCore
def find_winner(answer)
  ai = ["rock","paper","scissors"].shuffle[0]
  return result = "It is Tie! Both played #{answer}" if ai == answer 

  case answer
    when "rock"
      if ai=="paper"
        result = "You lost. I played #{ai}."
      else
        result = "You win!"
      end
    when "paper"
      if ai=="scissors"
        result = "You lost. I played #{ai}."
      else
        result = "You win!"
      end
    when "scissors"
      if ai=="rock"
        result = "You lost. I played #{ai}."
      else
        result = "You win!"
      end
  end

  result
end
end