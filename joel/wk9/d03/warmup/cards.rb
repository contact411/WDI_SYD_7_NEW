class Card

  attr_reader :val, :suit

  def initialize(val, suit)
    @val = val
    @suit = suit 
  end

  def to_s
    @val.to_s + ' of ' + @suit + 's'
  end

end


class Deck

  attr_reader :cards

  def initialize
    @cards = []
    values = ['Ace', (2..10).to_a, 'Jk', 'Qn', 'Kg'].flatten
    suits = ['spade', 'heart', 'club', 'dimond']

    suits.each do |suit| 
      values.each do |val| 
        card = Card.new(val, suit)
        @cards << card
      end
    end
  end

  def deal(num_players = 1, num_cards=5)
    1.upto(num_players) do |player_num|
      my_hand = cards.pop(player_num) 
      puts "Player #{player_num}:"
      puts my_hand
      puts 
    end
  end

  def shuffle
    @cards.shuffle!
  end

end



my_deck = Deck.new()
my_deck.shuffle

puts 
my_deck.deal(2)
puts

# Express Morning Exercise (10 minutes)

# Deck of Cards in Ruby:
# Define a Card class
# values should include: ['Ace', 2, 3, 4, 5, 6, 7, 8, 9, "Jk", "Qn", "Kg"]
# suits should include: ['Spade', 'Club', 'Heart', 'Dimond']
# puts my_card should display (for example) "5 of Dimonds"
# Define a Deck class
# should have all the cards that make up a typical deck
# include functionality for shuffling the deck
# include functionality to deal to specified number of players a specified number of cards




# Not quite right..
values = ["Ace", "2", "3", "4", "5", "6", "7", "8", "9", "Jk", "Qn", "Kg"]
suits = ["Spades", "Clubs", "Hearts", "Diamonds"]

suits.each do |suit|
  values.size.times do |i|
    stack_of_cards << Card.new( ranks[i], suit, i+1 )
  end
end

puts card.random