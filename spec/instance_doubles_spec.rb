class Person
  def hello
    sleep 3
    'Hello'
  end
end

RSpec.describe Person do
  describe 'regular double' do
    it 'can implement any method' do
      person = double(hello: 'Hello', hi: 'Hi')
      expect(person.hello).to eq('Hello')
    end
  end

  describe 'instance double' do
    it 'can only implement methods which are defined on the class' do
      #person = instance_double(Person, hello: 'Hello', hi: 'Hi')
      #the abobe code will throw error: the Person class does not implement the instance method: hi

      person = instance_double(Person)
      #allow(person).to receive(:hello).with(1).and_return('Hello')
      #the above code will throw an error: Wrong number of arguments. Expected 0, got 1.

      allow(person).to receive(:hello).and_return('Hello')
      expect(person.hello).to eq('Hello')
    end
  end
end