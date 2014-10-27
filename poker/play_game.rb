require "./card.rb"
require "./deck.rb"

class PlayGame

  attr_reader :cards

  def get_deck
    @deck = Deck.new
    @deck.generate
  end

  def get_hand
    4.times do  deal
    end
  end

  def deal
    puts "-----------"
    hand = @deck.cards.sample(5)
    puts hand
  end
end

play_game = PlayGame.new
play_game.get_deck
play_game.get_hand
