class Airport
attr_reader :planes
attr_writer :planes
attr_reader :capacity
attr_writer :capacity

MAX_CAPACITY = 6


	def initalize
		@capacity = MAX_CAPACITY 
		@planes = []
		3.times do 
		self.planes << Plane.new
	end
end

	def can_land?
	  @land = land
	  weather? == :sunny
	end

alias :can_take_off? :can_land?



	def weather?
		rand(1..3) <=2 ? :sunny :stormy
	end
end