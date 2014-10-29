require "./player"
require "./judge"
require "./round"

class Game
  def initialize
    @total_rounds = 0
    @rounds_won = 0
  end

  def play
    round = Round.new
    round.play
    increase_rounds_played
    adjust_score_based_on(round)
    announce_score
    ask_to_play_again
  end

  def increase_rounds_played
    @total_rounds += 1
  end

  def adjust_score_based_on(round)
    if round.won?
      @rounds_won += 1
    end
  end

  def ask_to_play_again
    puts "Play again? y/n"
    answer = gets.chomp
    if answer.downcase == "y"
      play
    end
  end

  def announce_score
    percentage = (@rounds_won.to_f / @total_rounds.to_f) * 100
    puts "You've won #{percentage}% of games so far"
  end

  def display_win_count
    if rounds.won?
      @rounds_won += 1
    end
  end
end

game = Game.new
game.play
