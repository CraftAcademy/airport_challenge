require 'plane'

class Airport

  attr_accessor :hanger

  def initialize(hanger_capacity)
    @hanger_capacity = hanger_capacity

    @hanger = []
    @sky  = []

    while @hanger.length < hanger_capacity
      @hanger << Plane.new
    end

    @hanger
  end

    def take_off
      if (@hanger.any? && traffic_control?)
        release_plane
      end
  end

  def release_plane
    released_plane = @hanger.pop
    @sky << released_plane
  end

  def land
    if (@hanger.length < @hanger_capacity && traffic_control?)
      park_plane
    end
  end

  def park_plane
    @hanger.push @sky.pop
  end

  def traffic_control?
    (weather_conditions? && hanger_has_room?) ? true : false
  end

  def hanger_has_room?
    @hanger.length < @hanger_capacity ? true : false
  end

  def weather_conditions?
    (sunny? && not_stormy?) ? true : false
  end

  def sunny?
    rand >= 0.2 ? true : false
  end

  def not_stormy?
    rand >= 0.2 ? true : false
  end

end
