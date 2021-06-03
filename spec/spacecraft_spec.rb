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
end