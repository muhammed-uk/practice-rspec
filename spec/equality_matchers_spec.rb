RSpec.describe 'Equality Matcher' do
  let(:a) { 3.0 }
  let(:b) { 3 }

  describe 'eq matcher' do
    it 'tests for value and ignore case' do
      expect(a).to eq(b)
    end
  end

  describe 'eql matcher' do
    it 'tests for value including case' do
      expect(a).not_to eql(b)
    end
  end

  describe 'equal andbe matcher' do
    let(:c) { [1,2,3] }
    let(:d) { [1,2,3] }
    let(:e) { c }

    it 'cares about object identity' do
      expect(c).to eq(d)
      expect(c).to eql(d)
      expect(c).to be(e)
      expect(c).to equal(e)
      expect(c).not_to equal(d)
      expect(c).not_to be(d)
    end
  end

end