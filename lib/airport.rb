require_relative 'plane'

class Airport

  attr_accessor :stationed_planes
  attr_accessor :capacity

  MAX_CAPACITY = 4

  def initialize
    self.stationed_planes = []
    self.capacity = MAX_CAPACITY
  end

  def landing(plane)
    if airport_full?
      raise "Keep flying. The airport is full!"
    else
      plane_landed(plane)
    end
  end

  def take_off
    flying_plane = stationed_planes.pop
    flying_plane.take_off
    flying_plane
  end

  def airport_full?
    stationed_planes.count >= MAX_CAPACITY
  end


  def plane_landed(plane)
    plane.land
    @stationed_planes << plane
    plane
  end

end