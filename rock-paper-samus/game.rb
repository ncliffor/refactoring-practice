require "./round"

class Game
  NUMBER_OF_ROUNDS = 4

  def play
    play_new_round
  end

  def play_new_round
    NUMBER_OF_ROUNDS.times do
    @round = Round.new
    @round.play
    end
  end

end

game = Game.new
game.play
