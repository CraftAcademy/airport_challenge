class Airport
  attr_accessor :planes
  
  def initialize
    @planes = []
    3.times do
      self.planes << Plane.new
    end
  end
  
  
end
