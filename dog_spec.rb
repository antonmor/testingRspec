require 'rspec'
require_relative 'dog'

describe Dog do 
  subject { Dog.new }

  describe '#bark' do
    it 'returns the "Woof!"' do
    #  dog = Dog.new
      expect(subject.bark).to eql('Woof!')
    end
  end

  describe '#hungry?' do
    it 'returns true if hunger_level is more than 5' do
      dog = Dog.new(hunger_level: 7)
      expect(dog).to be_hungry
    end 

    it 'returns falase if hunger_level is 5 or less' do
      dog = Dog.new(hunger_level: 5)
      expect(dog).to_not be_hungry
    end 

  end
end