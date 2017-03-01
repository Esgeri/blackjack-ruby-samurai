class Hand
  include Blackjack

  attr_reader :cards

  def initialize
    @cards = []
  end

  def hit!(deck)
    @cards << deck.cards.shift
  end

  def cards_count
    @cards.count
  end

  def show_cards
    @cards.each_with_index do |card, index|
      puts "#{index + 1}: #{card.card}#{card.suit}"
    end
  end

  def points
    point = 0

    @cards.each do |card|
      if card.card == 'A'
        point += ace_point(point, card.value)
      else
        point += card.value
      end
    end
    point
  end

  def ace_point(point, card_value)
    if point + card_value <= BLACKJACK
      ace_value = card_value
    else
      ace_value = 1
    end
    ace_value
  end
end
