class Plane

	attr_accessor :state


	def initialize
		@state = 'Flying'
	end

	def landed 
		@state = 'Landed'
	end

	def flying
		@state = 'Flying'
	end

	def can_take_off
		@state = 'Took-off'
	end

	def can_land
		@state = 'Allowed to land'
	end
end
