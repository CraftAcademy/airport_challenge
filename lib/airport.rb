class Airport

	include Weather

	DEFAULT_CAPACITY = 10

	attr_accessor :planes, :capacity

	def initialize
		@capacity = (:capacity)
		@planes = (:planes)
	end

	def capacity

		@capacity = DEFAULT_CAPACITY
	end

	def planes
		@planes = 4
	end

	def land(planes)

		say "landing prohibited in a storm!" if stormy?
		say "Airport is full" if full?
		say "plane has landed" if has_landed
		say "ready to take_off?" if clear_skies
	end

	def take_off(planes)

		say "take off not aloud in storm" if stormy?
	end

	def full

		planes.count == @planes
	end

	def has_landed(planes)
		plane.include? (planes)
	end

	def clear_skies
		condition = :sunny
	end

	def stormy
		condition = :storm

	def airport_full?
		landed_planes.count == capacity
	end
end