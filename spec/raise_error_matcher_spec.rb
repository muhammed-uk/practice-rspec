RSpec.describe 'raise_error matcher' do

  def my_method
    some_undefined_value
  end

  class CustomError < StandardError; end

  it 'can check for a specific error being raised' do
    expect { my_method }.to raise_error(NameError)
    expect { 10 / 0 }.to raise_error(ZeroDivisionError)
  end

  it 'can check for a custom/user-created error' do
    expect { raise CustomError }.to raise_error(CustomError)
  end
end