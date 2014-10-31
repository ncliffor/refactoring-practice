class Game
  WINNING_MOVES_AGAINST = {
    "Samus" => "Link",
    "Link" => "Luigi",
    "Luigi" => "Samus"
  }
  CHOICES = WINNING_MOVES_AGAINST.keys

  def play
    puts "Welcome select a character..."
    puts "| #{CHOICES.join(" | ")} |"
    gets.chomp

  end
end

game = Game.new
game.play
