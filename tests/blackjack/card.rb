class Card
  SUITS = %w[Clubs Diamonds Hearts Spades]
  RANKS = %w[2 3 4 5 6 7 8 9 10 Jack Queen King Ace]
  attr_accessor :suit, :rank, :show

  def initialize(suit, rank)
    @show = true
    if SUITS.include?(suit) && RANKS.include?(rank)
      @suit = suit
      @rank = rank
    else
      raise ArgumentError, 'Invalid card'
    end

    def to_s
      if @show
        "#{@rank} of #{@suit}"
      else
        'Card is face down'
      end
    end
  end
end