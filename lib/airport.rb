class Airport
  attr_accessor :planes, :capacity
  
  MAX_CAPACITY = 12
  
  def initialize
    @capacity = MAX_CAPACITY
    @planes = []
    3.times do
      self.planes << Plane.new
    end
  end
  
  def can_land?
    current_weather? == :sunny
  end
  alias :can_take_off? :can_land?
  
  def current_weather?
    rand(1..10) <= 7 ? :sunny : :stormy
  end
end
