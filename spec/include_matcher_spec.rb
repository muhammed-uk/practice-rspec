RSpec.describe 'include matcher' do

  describe 'Hot Chocolates' do
    it { is_expected.to include('Hot') }
    it { is_expected.to include('Choc') }
  end

  describe [10, 20, 30] do
    it { is_expected.to include(10) }
    it { is_expected.to include(10, 30) }
  end

  describe ( {one: 1, two: 2, three: 3} ) do
    it 'can check for key existance' do
      expect(subject).to include(:one)
      expect(subject).to include(:one, :two)
      expect(subject).to include(:three, :two)
    end

    it { is_expected.to include(:one, :three) }

    it 'can check for key-value pairs' do
      expect(subject).to include(one: 1)
      expect(subject).to include(one: 1, two: 2)
    end
    it { is_expected.to include(three: 3, one: 1) }
  end

end