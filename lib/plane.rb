require './lib/airport.rb'

class Plane
  attr_accessor :flying

  def initialize
    self.flying = true
  end

  def land(airport)
    if airport.can_land? && self.flying == true
      airport.receive_plane(self)
      'Landed'
    else
      'Cant land right now'
    end
  end

  def take_off(airport)
    if airport.can_take_off? && self.flying == false
      airport.release_plane(self)
      'Took off!'
    else
      'Cant take off right now!'
    end
  end
end
