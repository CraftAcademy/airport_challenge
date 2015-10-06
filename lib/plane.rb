require_relative 'airport'

class Plane

	DEFAULT_STATUS = "flying"

	attr_accessor :status

	def initialize
		self.status = DEFAULT_STATUS
	end

	def land
		self.status = "landed"
	end

	def landed? 
 		if self.status == "landed"
 			true
 		end
 	end

 	def take_off
 		self.status = "flying"
 	end

	def took_off?
		if self.status == "flying"
			true
		end 
	end 
end