# Target class
class Person
  attr_reader :name, :age
  def initialize(name, age)
    @name, @age = name.split(' '), age
  end

  def full_name
    @name.join(' ')
  end

  def firstname
    @name.first
  end

  def lastname
    @name.last
  end
end

require 'rspec'

RSpec.describe Person do
  let(:person) { Person.new('Steve Jobs', 20) }
  context 'name' do
    it 'returns fullname' do
      expect(person.full_name).to eq('Steve Jobs')
    end

    it 'returns first name' do
      expect(person.firstname).to eq('Steve')
    end

    it 'returns last name' do
      expect(person.lastname).to eq('Jobs')
    end
  end

  context 'age' do
    it 'returns his age' do
      expect(person.age).to eq(20)
    end
  end
end
