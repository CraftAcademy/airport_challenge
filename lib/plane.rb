require './lib/airport.rb'

class Plane
  attr_accessor :flying

  def initialize
    self.flying = true
  end

  # def fly
  #   self.flying == true
  # end

  # def landed
  #   self.flying == false
  # end

end
