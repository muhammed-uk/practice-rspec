RSpec.describe 'Falsy Truthy Nil matchers' do
  it 'test for truthiness' do
    expect(true).to be_truthy
    expect('Hello').to be_truthy
    expect([]).to be_truthy
    expect([1, 2]).to be_truthy
    expect({}).to be_truthy
    expect(-1).to be_truthy
    expect(:symbol).to be_truthy
  end

  it 'test for falsiness' do
    expect(false).to be_falsy
    expect(nil).to be_falsy
  end

  it 'test for nil' do
    hash = { one: 1 }
    expect(hash[:two]).to be_nil
  end
end