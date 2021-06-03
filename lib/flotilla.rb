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

  def recommend_personnel(ship)
    # recommended = []
    # @personnel.each do |person|
    #   if ship.requirements.each {|requirement| requirement.values.to_s.to_i < person.experience} || ship.requirements.each {|requirement| requirement.keys.to_s.include?(person.specialties)}
    #     recommended << person
    #   end
    # end
    # recommended
    ship.requirements.find_all do |requirement|
        # require 'pry';binding.pry
      personnel.each {|person| requirement.keys.include?(person.specialties)} || personnel.each {|person|requirement.values.pop <=  person.experience}
    end
  end
end