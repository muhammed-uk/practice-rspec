class ProfessionalWrestler
  attr_reader :name, :finishing_move

  def initialize name, finishing_move
    @name = name
    @finishing_move = finishing_move
  end
end

RSpec.describe 'have_attribute' do
  describe ProfessionalWrestler.new('Randy Orton', 'RKO') do
    it 'checks for object attributes and proper values' do
      expect(subject).to have_attributes(name: 'Randy Orton')
      expect(subject).to have_attributes(name: 'Randy Orton', finishing_move: 'RKO')
    end
    it { is_expected.to have_attributes(name: 'Randy Orton') }
    it { is_expected.to have_attributes(finishing_move: 'RKO') }
    it { is_expected.to have_attributes(name: 'Randy Orton', finishing_move: 'RKO') }
  end
end