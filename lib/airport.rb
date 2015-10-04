class Airport

	attr_accessor :stationed_planes
  attr_accessor :capacity

  MAX_CAPACITY = 4

	def initialize
    self.stationed_planes = []
    self.capacity = MAX_CAPACITY
	end

  def take_off

  end
end