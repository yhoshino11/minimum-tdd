class Person
  attr_reader :name, :age
  def initialize(name,age)
    @name, @age = name,age
  end

end

require 'rspec'
RSpec.describe Person do
  let(:person) { Person.new('Steve Jobs', 20) }
  it 'name' do
    expect(person.name).to eq('Steve Jobs')
  end

  it 'age' do
    expect(person.age).to eq(20)
  end
end
