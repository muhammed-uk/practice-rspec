RSpec.describe 'Comparison Matchers' do

  it 'allows for comparison with built-in operators' do
    expect(100).to be > 10
    expect(100).to be < 200
    expect(100).to be >= 10
    expect(100).to be <= 200
    expect(100).to be >= 100
  end
  describe 100 do #subject will be set as 100
    #examples with one-liner syntax
    it { is_expected.to be > 10 }
    it { is_expected.to be < 200 }
    it { is_expected.to be >= 10 }
  end
end