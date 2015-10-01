class Airport

	attr_accessor :docked_plane
  attr_accessor :capacity

  max_capacity = 4

	def initialize
    self.docked_plane = []
    self.max_capacity = 4
	end

  def take_off(plane)
    if take_off(plane)
      release(plane)
      "Took off!"
    else
      puts 'You cant take off right now!'
    end
  end

  # def release(plane)
  #   if self.docked_plane = []
  # end
end