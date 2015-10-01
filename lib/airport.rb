class Airport

	attr_accessor :docked_plane
  attr_accessor :capacity

	def initialize
    self.docked_plane = []
    self.max_capacity = 4
	end

  # def max_capacity
  #   self.docked_plane.count >= capacity
  # end

  def take_off(plane)
    if take_off(plane)
      release(plane)
      "Took off!"
    else
      puts 'Cant take off right now!'
    end
  end

  # def release(plane)
  #   if self.docked_plane = []
  # end
end