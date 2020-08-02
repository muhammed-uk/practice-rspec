RSpec.describe 'Shorthand syntax' do
  subject { 'muhammed' }

  context 'with classic syntax' do
    it 'should eq \'muhammed\'' do
      expect(subject).to eq('muhammed')
    end
  end

  context 'with one-line syntax' do
    it { is_expected.to eq('muhammed') }
  end
end