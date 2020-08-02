RSpec.shared_examples 'a Ruby method with three elements' do
  it 'returns the number of items' do
    expect(subject.length).to eq(3)
  end
end

RSpec.describe Array do
  subject { [1,2,3] }
  include_examples('a Ruby method with three elements')
end

RSpec.describe String do
  subject { 'abc' }
  include_examples('a Ruby method with three elements')
end

RSpec.describe Hash do
  subject { { one: 1, two: 2, three: 3 } }
  include_examples('a Ruby method with three elements')
end

class SuasageLink
  def length
    3
  end
end

RSpec.describe SuasageLink do
  subject { described_class.new }
  include_examples('a Ruby method with three elements')
end