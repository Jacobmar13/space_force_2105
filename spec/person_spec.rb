require 'rspec'
require './lib/person'

RSpec.describe 'Person' do
  context '(Iteration 1)' do
    it 'exists' do
      kathy = Person.new('Kathy Chan', 10)

      expect(kathy).to be_a(Person)
    end

    it 'has a name' do
      kathy = Person.new('Kathy Chan', 10)

      expect(kathy.name).to eq('Kathy Chan')
    end

    it 'has experience' do
      kathy = Person.new('Kathy Chan', 10)

      expect(kathy.experience).to eq(10)
    end
    it 'can check for specialties' do
      kathy = Person.new('Kathy Chan', 10)

      expect(kathy.specialties).to eq([])
    end

    it 'can add specialties' do
      kathy = Person.new('Kathy Chan', 10)
      kathy.add_specialty(:astrophysics)
      kathy.add_specialty(:quantum_mechanics)

      expect(kathy.specialties).to eq([:astrophysics, :quantum_mechanics])
    end
  end
end