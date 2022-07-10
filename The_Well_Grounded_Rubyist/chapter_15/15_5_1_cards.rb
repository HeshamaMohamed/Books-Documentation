module PlayingCards
  RANKS = %w[2 3 4 5 6 7 8 9 10 J Q K A]
  SUITS = %w[clubs diamons hearts spades]

  class Deck
    def initialize
      @cards = []
      RANKS.each do |rank|
        SUITS.each do |suit|
          @cards << "#{rank} of #{suit}"
        end
      end
      @cards.shuffle!
    end

    def deal(n=1)
      @cards.pop(n)
    end

    def size
      @cards.size
    end
  end
end
