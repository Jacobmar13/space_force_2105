class Flotilla
  attr_reader :name, :personnel, :ships

  def initialize(designation)
    @name = designation[:designation]
    @personnel = []
    @ships = []
  end

  def add_ship(ship)
    @ships << ship
  end

  def add_personnel(personnel)
    @personnel << personnel
  end
end