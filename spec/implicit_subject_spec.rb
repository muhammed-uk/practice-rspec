RSpec.describe Hash do
  it 'subject should starts off empty' do
    expect(subject.length).to eq(0)
    subject[:one] = 1
    expect(subject.length).to eq(1)
  end

  it 'subject is isolated across examples' do
    expect(subject.length).to eq(0)
  end
end