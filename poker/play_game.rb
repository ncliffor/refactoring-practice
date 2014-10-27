require "./card.rb"
require "./deck.rb"

class PlayGame

  attr_reader :cards

  def get_deck
    @deck = Deck.new
    @deck.generate
  end

  def deal
    hand = @deck.cards
    puts hand.sample(5)
  end
end

play_game = PlayGame.new
play_game.get_deck
play_game.deal
