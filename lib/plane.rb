require 'byebug'

class Plane
  attr_accessor :flying
  
  def initialize
    self.flying = false
  end
  
  def take_off(airport)
    if airport.can_take_off? && self.landed? 
      self.flying = true 
      airport.release_plane(self)
      'Took off'
    else
      'Not allowed to take off'
    end
  end
  
  def land(airport)
    if airport.can_land? && self.flying?
      self.flying = false
      airport.receive_plane(self)
      'Landed'
    else
      'Not allowed to land'
    end
  end
  
  def flying?
    self.flying
  end
  
  def landed?
    !self.flying
  end
end
