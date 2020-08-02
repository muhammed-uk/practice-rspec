class Card
  attr_reader :type

  def initialize(type)
    @type = type
  end
end

RSpec.describe 'Card' do
  it 'has a type' do
    card_type = 'Ace of Spades'
    card = Card.new(card_type)
    expect(card.type).to eq(card_type)
  end
end