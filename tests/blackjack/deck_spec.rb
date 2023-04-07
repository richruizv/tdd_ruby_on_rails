require_relative 'deck'

RSpec.describe Deck do
  SUITS = %w[Hearts Diamonds Clubs Spades]
  RANKS = %w[2 3 4 5 6 7 8 9 10 Jack Queen King Ace]

  before do
    @deck = Deck.new(SUITS, RANKS)
  end

  it 'responds to shuffle' do
    expect(@deck).to respond_to(:shuffle)
  end

  it 'responds to suits' do
    expect(@deck).to respond_to(:suits)
  end

  it 'responds to ranks' do
    expect(@deck).to respond_to(:ranks)
  end

  it 'responds to deal_card' do
    expect(@deck).to respond_to(:deal_card)
  end

  it 'responds to replace_with' do
    expect(@deck).to respond_to(:replace_with)
  end

  it 'pops off the stack when "deal_card" is called' do
    dealt_card = @deck.shuffle.last
    expect(@deck.deal_card).to eq(dealt_card)
  end

  it 'dealt card cannot be nil' do
    expect(@deck.deal_card).not_to be_nil
  end

  it 'gets a new deck with replace_with' do
    deck_of_cards = []
    deck_of_cards.push(Card.new('Hearts', 'Ace'))
    deck_of_cards.push(Card.new('Clubs', '3'))
    deck_of_cards.push(Card.new('Spades', 'Jack'))
    new_deck = @deck.dup
    new_deck.replace_with(deck_of_cards)
    expect(@deck.deck).not_to eq(new_deck.deck)
  end

end