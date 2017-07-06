class Bike
	def initialize(working = true)
		@working = working
	end
	def working?
		@working == true ? true:false
	end
end
