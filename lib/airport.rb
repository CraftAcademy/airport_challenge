class Airport

	attr_accessor :docked_plane
  attr_accessor :capacity

	#MAX_CAPACITY = 4

	def initialize #<-- Instance metod 
    self.docked_plane = []
    self.capacity = 4
	end 

	def take_off(plane) #<-- Class metod
		if can_take_off(plane)
      release(plane)
      'Sir, you can take off!'
    else
      puts 'Sir, you cant take off!'
    end 
	end
end