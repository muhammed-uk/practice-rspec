RSpec.describe 'all matcher' do
  it 'allows for aggregate check' do
    expect([1, 3, 5]).to all(be_odd)
    expect([2, 4, 6]).to all(be_even)
    expect([[], []]).to all(be_empty)
    expect([0, 0, 0]).to all(be_zero)
    expect([1, 2, 3, 4]).to all(be < 5)
  end

  describe [5, 7 , 9] do
    it { is_expected.to all(be < 10) }
    it { is_expected.to all(be_odd) }
  end
end