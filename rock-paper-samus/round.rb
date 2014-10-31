require "./judge"

class Round
  CHOICES = Judge::WINNING_MOVES_AGAINST.keys

  def play
    puts "Welcome select a character..."
    puts "| #{CHOICES.join(" | ")} |"
    player_choice
    computer_move
    judge_round_winner
  end

  def player_choice
    player_move = gets.chomp
    @player_choice = player_move.capitalize
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


