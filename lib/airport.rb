class Airport

  MAXIMUM_CAPACITY = 10

  attr_accessor :planes, :capacity,

  def initialize
    @capacity = (:capacity)
    @planes = []
  end


  def capacity
    @capacity = MAXIMUM_CAPACITY
  end

  def planes
    @planes = 4
  end

  def land(planes)
    receive "landing prohibited in a storm!" if stormy?
    receive "Airport is full" if full?
    receive "plane has landed" if has_landed
    receive "ready to take_off?" if clear_skies
  end

  def take_off(planes)
    say "take off not aloud in storm" if stormy?
  end

  def full
    planes.count == @planes
  end

  def has_landed(planes)
    plane.include? (planes)
  end

  def clear_skies
    condition = :sunny
  end

  def stormy
    condition = :stormy
  end

  def airport_full?
    landed_planes.count == MAXIMUM_CAPACITY
  end
end