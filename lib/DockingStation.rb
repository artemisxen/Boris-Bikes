require 'bike'
class DockingStation

	attr_reader :bikes
	def initialize
		@bikes = []
	end

	def release_bike
		#Bike.new
		raise "No bikes available to release" if empty?
		@bikes.pop
	end

	def dock(bike)
		raise "Docking Station full" if full?
		@bikes << bike
	end

	private
	def full?
		@bikes.length == 20 ? true : false
	end

	def empty?
		@bikes.length == 0 ? true : false
	end
end
