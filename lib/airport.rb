class Airport
  attr_accessor :landed_planes

  MAX_CAPACITY = 2

  def initialize
    @landed_planes = []
  end

  def airport_full?
    self.landed_planes.count >= MAX_CAPACITY
  end

  def weather
    wn = rand(6)
      if wn < 4
        'Sunny'
      else
        'Stormy'
      end
  end

  def take_off_plane(plane)
    if can_take_off == true
      release_plane(plane)
      'Took off!'
    else
      'Cant take off right now!'
    end
  end

  def release_plane(plane)
    self.landed_planes.delete plane
    plane.flying
  end

  def can_land
    weather == 'Sunny' && !airport_full?
  end

  def can_take_off
    weather == 'Sunny'
  end

  def land_plane(plane)
    if can_land == true
      receive_plane(plane)
      'Landed'
    else
      'Cant land right now'
    end
  end

  def receive_plane(plane)
    @landed_planes << plane
    plane.landed
  end

end
