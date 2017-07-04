require 'bike'
class DockingStation

	attr_reader :bike

	def release_bike
		#Bike.new
		if @bike.nil?
			raise "No bikes available to release"
		else
			@bike
		end
	end

	def dock(bike)
		#@bikes.push(bike)
		@bike = bike
	end

end