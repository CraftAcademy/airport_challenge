class Plane
	attr_accessor :flying

	def initialize
		@flying = true
	end

	def flying?
	 if @flying == true 
	 	true
	 else
	 	false
	 end
	end
end
