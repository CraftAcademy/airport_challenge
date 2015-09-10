class Plane

	attr_accessor :flying

	def initialize
		self.flying = true
	end

	def flying?
		self.flying == true
	end 

	def land
		if self.flying == false
			'You have already landed, sir'
		else 
			self.flying = false
		end 
	end 

	def landed? 
		self.flying == false
	end

	def take_off
		if self.flying == true
			'You are already flying, sir'
		else 
			self.flying = true
		end 
	end 
end