require_relative 'card'
class Deck
  SUITS = %w[Hearts Diamonds Clubs Spades]
  RANKS = %w[2 3 4 5 6 7 8 9 10 Jack Queen King Ace]

  attr_reader :suits, :ranks, :deck

  def initialize(suits, ranks)
    @suits = suits
    @ranks = ranks
    @deck = []
    create_deck
  end

  def shuffle
    @deck.shuffle!
  end

  def deal_card
    @deck.pop
  end

  def replace_with(new_deck)
    @suits = []
    @ranks = []
    @deck = new_deck

    new_deck.each do |card|
      add_suit_and_rank(card)
    end
    self
  end

  private

  def create_deck
    suits.each do |suit|
      ranks.each do |rank|
        @deck << Card.new(suit, rank)
      end
    end
  end

  def add_suit_and_rank(card)
    @suits << card.suit unless @suits.include?(card.suit)
    @ranks << card.rank unless @ranks.include?(card.rank)
  end
end