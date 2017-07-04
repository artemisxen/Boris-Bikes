require 'bike'
class DockingStation
	attr_reader :bike
	def initialize
		#@bikes = []
		@bike = nil
	end

	def release_bike
		Bike.new
	end

	def dock(bike)
		#@bikes.push(bike)
		@bike = bike
	end

end