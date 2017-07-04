require 'bike'
class DockingStation

	attr_reader :bike


	def release_bike
		#Bike.new
		raise "No bikes available to release" if @bike.nil?		
		@bike
	end

	def dock(bike)
		raise "Docking Station full" if @bike	
		@bike = bike
	end

end