require 'sinatra'
require 'erb'





get '/' do
  erb :rps
end

post '/' do
  hand = params[:hand]
  game = Game.new(hand)
  response = game.play
  "<h1>You chose #{hand}, #{response}</h1>"
end



helpers do

  class Computer
    attr_accessor :hand

    def initialize
      @hand = ["scissors", "rock", "paper"].sample
    end

  end


  class Player

    attr_accessor :hand

    def initialize(string = nil)
      @hand = string
    end

  end


  class Game
    attr_accessor :player, :choice, :opponent

    def initialize(hand)
      @player1 = Player.new(hand)
      @player2 = Computer.new

    end

    def get_hand
      puts "What do you want to choose Player 1?"
      @player1.hand = gets.chomp.downcase
    end

    def opp_get_hand
      100.times {puts "\n"}
      puts "What do you want to choose Player 2?"
      @player2.hand = gets.chomp.downcase
    end

    def check_round(choice1, choice2)
      if choice1 == "rock" && choice2 == "paper"
        return "#{choice2} wins!"
      elsif choice1 == "paper" && choice2 == "rock"
        return "#{choice1} wins!"
      elsif choice1 == "rock" && choice2 == "scissors"
        return "#{choice1} wins!"
      elsif choice1 == "scissors" && choice2 == "rock"
        return "#{choice1} wins!"
      elsif choice1 == "rock" && choice2 == "rock"
        return "No one won :("
      elsif choice1 == "paper" && choice2 == "scissors"
        return "#{choice2} wins!"
      elsif choice1 == "scissors" && choice2 == "paper"
        return "#{choice1} wins!"
      elsif choice1 == "paper" && choice2 == "paper"
        return "No one wins :("
      elsif choice1 == "scissors" && choice2 == "scissors"
        return "No one wins :("
      end
    end

    def play
      self.check_round(@player1.hand, @player2.hand)
    end


  end
end
