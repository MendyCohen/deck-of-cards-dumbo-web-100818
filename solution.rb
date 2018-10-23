class Deck

  attr_accessor :cards

  @@all = []

  def initialize(cards)
    @cards = cards
    @@all << self
  end

  def self.all
    @@all
  end

  #you need to call deck1.cards in order to access the array
  #of cards
  def choose_card(deck1)
    arr = deck1.cards.sample
    deck1.cards.delete(arr)
  end

end

class Card
  @@all = []
  def initialize(deck)
    @deck = deck
    # @suit = suit
    # @rank = rank
    @@all << self
  end

  def self.all
    @@all
  end

end
