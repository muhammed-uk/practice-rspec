RSpec.shared_context 'shared context' do
  before do
    @food = []
  end
  def some_helper_method
    5
  end
  let(:some_variable) { [1,2,3] }
end

RSpec.describe 'first example group' do
  include_context 'shared context'

  it 'can use outside instance variables' do
    expect(@food.length).to eq(0)
    @food << 'Biriyani'
    expect(@food.length).to eq(1)
  end
  it 'can reuse instance variables across multiple examples' do
    expect(@food.length).to eq(0)
  end
end

RSpec.describe 'second example group' do
  include_context 'shared context'
  it 'can use shared let variables' do
    expect(some_variable.length).to eq(3)
  end
end