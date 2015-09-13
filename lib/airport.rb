require './lib/airport.rb'

class Airport
  attr_accessor :landed_planes
  attr_accessor :capacity

  #MAX_CAPACITY = 2

  def initialize
    @landed_planes = []
    @capacity = 3
  end

  def airport_full?
    self.landed_planes.count >= capacity
  end

  def sunny?
    rand(10)<7
  end

  def take_off(plane)
    if can_take_off(plane)
      release(plane)
      'Took off!'
    else
      puts 'Cant take off right now!'
    end
  end

  def release(plane)
    self.landed_planes.delete plane
    @capacity +=1
    plane.flying = true
  end

  def can_land(plane)
    sunny? == true && !airport_full? && plane.flying == true
  end

  def can_take_off(plane)
    sunny? == true && plane.flying == false
  end

  def land(plane)
    if can_land(plane)
      receive_plane(plane)
      'Landed'
    else
      'Cant land right now'
    end
  end

  def receive_plane(plane)
    @landed_planes << plane
    @capacity -=1
    plane.flying = false
  end
end