class Card
  attr_reader :suit, :card, :value

  def initialize(suit, card)
    @suit = suit
    @card = card
    @value = card_value
  end

  def show_card
    "#{@value}-#{@suit}"
  end

  private

  def card_value
    return 10 if ['J', 'Q', 'K'].include?(@card)
    return 11 if @card == 'A'
  end
end
