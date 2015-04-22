class Person

  def initialize(name)
    @name = name
  end

  def name=(name)
    @name = name
  end

  def name
    @name
  end
end

require 'rspec'
RSpec.describe Person do
  it 'name' do
    person = Person.new('Steve Jobs')
    expect(person.name).to eq('Steve Jobs')
  end
end
