require 'bike'
class DockingStation

	attr_reader :bikes
	def initialize
		@bikes = []
	end

	def release_bike
		#Bike.new
		raise "No bikes available to release" if @bikes == []
		@bikes.pop
	end

	def dock(bike)
		raise "Docking Station full" if @bikes.length >= 20
		@bikes << bike
	end

end
