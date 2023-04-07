require_relative 'deck'

deck = Deck.new(Deck::SUITS, Deck::RANKS)
puts deck.shuffle
puts
puts 'Dealt card details:'
card = deck.deal_card
puts card

deck_of_cards = [
  Card.new('Hearts', 'Ace'),
  Card.new('Clubs', '3'),
  Card.new('Spades', 'Jack')
]

deck.replace_with(deck_of_cards)
puts
puts "New deck of cards:"
puts deck.shuffle

