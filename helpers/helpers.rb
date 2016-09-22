module HelperMethods
  def ai_sample
    array = %w[rock paper scissors]
    array.sample
  end

  def win?(ai, user)
    (ai == 'rock' && user == 'paper') ||
    (ai == 'paper' && user == 'scissors') ||
    (ai == 'scissors' && user == 'rock')
  end

  def lose?(ai, user)
    (ai == 'rock' && user == 'scissors') ||
    (ai == 'paper' && user == 'rock') ||
    (ai == 'scissors' && user == 'paper')
  end
end
