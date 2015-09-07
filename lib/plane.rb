class Plane

	attr_accessor :flying

	def initialize 
		self.flying = true
	end 

def flying?
	if self.flying == true
		true
	else
		false
	end
end 

def land
	if self.flying?
		self.flying = false 
	else 
		"You are not flying"
	end
end 

end
