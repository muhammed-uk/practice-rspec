class Card
  attr_reader :rank, :suit

  def initialize(rank, suit)
    @rank = rank
    @suit = suit
  end
end

RSpec.describe Card do

  before(:all) do
    @rank = 'Ace'
    @suit = 'Spades'
    @card = Card.new(@rank, @suit)
  end

  it 'has a rank' do
    expect(@card.rank).to eq(@rank)
  end

  it 'has a suit' do
    expect(@card.suit).to eq(@suit)
  end
end