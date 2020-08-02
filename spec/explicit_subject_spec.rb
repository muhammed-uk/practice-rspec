RSpec.describe Hash do

  subject do
    { one: 1, two: 2 }
  end

  it 'has two key-value pairs' do
    expect(subject.length).to eq(2)
  end
end