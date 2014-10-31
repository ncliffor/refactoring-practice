require "./judge"

class Game
  CHOICES = Judge::WINNING_MOVES_AGAINST.keys

  def play
    new_round_options
    player_choice
    computer_move
    judge_round_winner
  end

  def new_round_options
    puts "Welcome select a character..."
    puts "| #{CHOICES.join(" | ")} |"
  end

  def player_choice
    @player_choice = gets.chomp
  end

  def computer_move
    @computer_move = CHOICES.sample
    puts @computer_move
  end

  def judge_round_winner
    judge = Judge.new(@player_choice, @computer_move)
    judge.who_won?
  end
end

game = Game.new
game.play
