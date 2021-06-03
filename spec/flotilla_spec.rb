require 'rspec'
require './lib/spacecraft'
require './lib/person'
require './lib/flotilla'

RSpec.describe 'Flotilla' do
  context '(Iteration 2)' do
    it 'exists' do
      seventh_flotilla = Flotilla.new({designation: 'Seventh Flotilla'})

      expect(seventh_flotilla).to be_a(Flotilla)
    end

    it 'has name' do
      seventh_flotilla = Flotilla.new({designation: 'Seventh Flotilla'})

      expect(seventh_flotilla.name).to eq('Seventh Flotilla')
    end

    it 'can check for personnel' do
      seventh_flotilla = Flotilla.new({designation: 'Seventh Flotilla'})

      expect(seventh_flotilla.personnel).to eq([])
    end

    it 'can check for ships' do
      seventh_flotilla = Flotilla.new({designation: 'Seventh Flotilla'})

      expect(seventh_flotilla.ships).to eq([])
    end

    it 'can add ships' do
      seventh_flotilla = Flotilla.new({designation: 'Seventh Flotilla'})
      daedalus = Spacecraft.new({name: 'Daedalus', fuel: 400})
      daedalus.add_requirement({astrophysics: 6})
      daedalus.add_requirement({quantum_mechanics: 3})
      seventh_flotilla.add_ship(daedalus)

      expect(seventh_flotilla.ships).to eq([daedalus])
    end
  end
end