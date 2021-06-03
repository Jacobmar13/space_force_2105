class Person
  attr_reader :name, :experience, :specialties

  def initialize(name, experience)
    @name = name
    @experience = experience
    @specialties = []
  end

  def add_specialty(specialty)
    @specialties << specialty
  end

  def individual_specialty_experience
    specialty_experience = Hash.new
    @specialties.each do |specialty|
      specialty_experience[specialty] = @experience
    end
    specialty_experience
  end
end