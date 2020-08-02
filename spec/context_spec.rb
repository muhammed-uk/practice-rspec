RSpec.describe '#even? method' do

  context 'with odd number' do
    it 'should return false' do
      expect(1.even?).to eq(false)
    end
  end

  context 'with even number' do
    it 'should return true' do
      expect(2.even?).to eq(true)
    end
  end
end