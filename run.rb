require_relative './solution.rb'
require 'pry'

rank = ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]
suit = ["Hearts", "Clubs", "Diamonds", "Spades"]

deck = suit.map do |suit|
 rank.map do |rank|
   rank + suit
 end
end.flatten

card_deck = suit.map do |suit|
 rank.map do |rank|
   rank + suit
 end
end.flatten

deck.map{|card|card.insert(1, ': ')}
card_deck.map{|card|card.insert(1, ': ')}

  cards = []
  52.times {
    cards << Card.new(card_deck.delete(card_deck.sample))
  }

deck1 = Deck.new(cards)
deck2 = Deck.new(cards)
binding.pry

test1 = "just bc pry is weird"
