require_relative 'plane'

class Airport

  attr_accessor :stationed_planes
  attr_accessor :capacity

  MAX_CAPACITY = 4

  def initialize
    self.stationed_planes = []
    self.capacity = MAX_CAPACITY
  end

  def weather?
    rand(1..10) <= 7 ? 'sunny' : 'stormy'
  end

  def land?
    weather? == :sunny && !self.airport_full?
  end
  #alias_method :land?, :take_off?

  def landing(plane)
    if airport_full?
      fail "Keep flying!"
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
    self.stationed_planes << plane
    plane
  end
end