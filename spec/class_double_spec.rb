class Deck
  def self.build
    #logic to create whole bunch of cards
  end
end

class CardGame
  attr_reader :cards

  def start
    @cards = Deck.build
  end
end

RSpec.describe CardGame do
  it 'can only implement class methods which are defined on a class' do
    #class_double(Deck, build: %w[King Queen], shuffle: %w[Queen King])
    # the above code will throw error:  the Deck class does not implement the class method: shuffle

    #class_double(Deck, build: %w[King Queen])  --> work fine

    deck_klass = class_double(Deck, build: %w[King Queen]).as_stubbed_const
    subject.start #call to Deck will be accessed from above stubbed double
    expect(subject.cards).to eq(['King', 'Queen'])
  end
end