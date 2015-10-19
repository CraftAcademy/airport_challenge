require './lib/plane.rb'

class Airport
  attr_accessor :landed_planes
  attr_accessor :capacity

  MAX_CAPACITY = 3

  def initialize
    @landed_planes = []
    @capacity = MAX_CAPACITY
  end

  def airport_full?
    self.landed_planes.count >= self.capacity
  end

  def sunny?
    rand(10)<7
  end

  def release_plane(plane)
    self.landed_planes.delete plane
    self.capacity +=1
    plane.flying = true
  end

  def can_land?
    sunny? && !airport_full?
  end

  def can_take_off?
    sunny?
  end

  def receive_plane(plane)
    self.landed_planes << plane
    self.capacity -=1
    plane.flying = false
  end
end
