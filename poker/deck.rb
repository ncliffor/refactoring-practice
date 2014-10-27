class Deck
  def initialize
    @numbers = %w[A 2 3 4 5 6 7 8 9 10 J Q K]
    @suits = %w[D H C S]
    @cards = []
  end

  # def cards_suit
  #   @suits = ["D", "H", "C", "S"]
  # end

  def cards
    @numbers.each do |number|
      @suits.each do |suit|
        @cards << [number + suit]
        puts @cards
      end
    end
  end

  def play
    
  end
end

deck = Deck.new
deck.cards
