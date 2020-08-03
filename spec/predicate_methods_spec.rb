RSpec.describe 'Predicate methods and predicate matchers' do

  it 'can be tested with ruby methods' do
    expect(2.even?).to eq(true)
  end

  it 'can be tested with predicate matchers' do
    expect(20).to be_even
    expect(5).to be_odd
    expect(5 - 5).to be_zero
    expect([]).to be_empty
  end

  describe 0 do
    it { is_expected.to be_zero  }
  end
end