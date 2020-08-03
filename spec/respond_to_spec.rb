class HotChocolate
  def drink
    'delicious'
  end

  def discard
    'PLOP!'
  end

  def purchase number
    "Awesome!, Purchased #{number} more hot chocolates"
  end
end

RSpec.describe HotChocolate do
  it 'confirms that an object can respond to a method' do
    expect(subject).to respond_to(:drink)
    expect(subject).to respond_to(:discard, :drink)
    expect(subject).to respond_to(:purchase, :drink)
  end

  it 'confirms that an object can respond to method with argument' do
    expect(subject).to respond_to(:purchase).with(1).arguments
  end
end