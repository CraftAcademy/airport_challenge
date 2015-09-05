class Plane
  attr_accessor :flying
  
  def initialize
    self.flying = true
  end
  
  def take_off
    self.landed? ? self.flying = true : false
  end
  
  def land
    self.flying? ? self.flying = false : false
  end
  
  def flying?
    self.flying
  end
  
  def landed?
    !self.flying
  end
end
