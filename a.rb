# Shows Person
class Person
  attr_writer :name
  def initialize(name)
    @name = name
  end
end

require 'rspec'
RSpec.describe Person do
  it 'name' do
    person = Person.new('Steve Jobs')
    expect(person.name).to eq('Steve Jobs')
  end
end
