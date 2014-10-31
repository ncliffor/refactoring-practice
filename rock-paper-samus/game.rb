class Game
  WINNING_MOVES_AGAINST = {
    "Samus" => "Link",
    "Link" => "Luigi",
    "Luigi" => "Samus"
  }



  def play
    puts "Welcome to rock, paper, samus"
    
  end
end

game = Game.new
game.play
