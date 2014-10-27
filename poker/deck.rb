class Deck
  def initialize
    @numbers = %w[A 2 3 4 5 6 7 8 9 10 J Q K]
    @suits = %w[D H C S]
    @cards = []
  end

  attr_reader :cards

  def generate
    @numbers.each do |number|
      @suits.each do |suit|
        @cards << number+suit
      end
    end
  end
end

# deck = Deck.new
# deck.generate
# puts deck.cards
