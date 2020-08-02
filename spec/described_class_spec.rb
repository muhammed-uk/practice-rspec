class King
  attr_reader :name

  def initialize(name)
    @name = name
  end
end

RSpec.describe King do
  subject { described_class.new('Muhammed') }
  let(:anand) { described_class.new('Anand') }

  it 'represents a great person' do
    expect(subject.name).to eq('Muhammed')
    expect(anand.name).to eq('Anand')
  end
end