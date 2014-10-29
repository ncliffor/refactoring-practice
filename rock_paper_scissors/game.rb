require "./player"
require "./judge"
require "./round"

class Game
  def play
    round = Round.new
    round.play
  end

  def ask_to_play_again
    
  end

  def display_win_count
    puts "----You've won so many times----"
  end
end

game = Game.new
game.play
