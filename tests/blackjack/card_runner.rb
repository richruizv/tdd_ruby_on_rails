require_relative 'card'

suit = 'Clubs'
rank = '9'

card = Card.new(suit, rank)

puts "Suit of cards is #{card.suit}"
puts "Rank of cards is #{card.rank}"
puts "Card is #{card.to_s}"