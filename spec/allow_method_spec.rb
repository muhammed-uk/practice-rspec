RSpec.describe 'allow method review' do
  it 'can customize return value of a double' do
    calculator = double
    allow(calculator).to receive(:add).and_return(15)
    expect(calculator.add).to eq(15)
    expect(calculator.add(1)).to eq(15)
    expect(calculator.add(1,2)).to eq(15)
    expect(calculator.add('hello')).to eq(15)
  end

  it 'can stub one or more methods on an object' do
    array = 1, 2, 3
    allow(array).to receive(:sum).and_return(10)
    expect(array.sum).to eq(10)
    array << 4
    expect(array.count).to eq(4)
  end

  it 'can return multiple return values in sequence' do
    mock_array = double
    allow(mock_array).to receive(:pop).and_return(:c, :d, nil)
    expect(mock_array.pop).to eq(:c)
    expect(mock_array.pop).to eq(:d)
    expect(mock_array.pop).to be_nil
    expect(mock_array.pop).to be_nil
  end
end