RSpec.describe 'satisfy matcher' do
  describe 'malayalam' do
    it 'is a palindrome' do
      expect(subject).to satisfy('be a palidrome') { |value| value == value.reverse }
    end
  end
end