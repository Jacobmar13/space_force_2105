require 'rspec'
require './lib/spacecraft'

RSpec.describe 'Spacecraft' do
  context '(Iteration 1)' do
    it 'exists' do
      daedalus = Spacecraft.new({name: 'Daedalus', fuel: 400})

      expect(daedalus).to be_a(Spacecraft)
    end

    it 'has a name' do
      daedalus = Spacecraft.new({name: 'Daedalus', fuel: 400})

      expect(daedalus.name).to eq('Daedalus')
    end

    it 'has fuel' do
      daedalus = Spacecraft.new({name: 'Daedalus', fuel: 400})

      expect(daedalus.fuel).to eq(400)
    end
  end

  context '(Iteration 2)' do
    it 'has requirements' do
      daedalus = Spacecraft.new({name: 'Daedalus', fuel: 400})

      expect(daedalus.requirements).to eq([])
    end

    it 'can add requirements' do
      daedalus = Spacecraft.new({name: 'Daedalus', fuel: 400})
      daedalus.add_requirement({astrophysics: 6})
      daedalus.add_requirement({quantum_mechanics: 3})

      expect(daedalus.requirements).to eq([{astrophysics: 6}, {quantum_mechanics: 3}])
    end
  end
end