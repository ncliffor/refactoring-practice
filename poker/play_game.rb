require "./card.rb"
require "./deck.rb"

class PlayGame
  def initialize
    @players = %w[Player-1 Player-2 Player-3 Player-4]
  end

  def get_deck
    @deck = Deck.new
    @deck.generate
  end

  def get_hand
    4.times do deal
    end
  end

  def player_name
    puts "------------"
    @players.shift(1)
  end

  def player_hand
    @deck.cards.shift(5)
  end

  def deal
    puts player_name
    puts player_hand
  end
end

play_game = PlayGame.new
play_game.get_deck
play_game.get_hand
