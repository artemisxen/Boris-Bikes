require 'bike'
class DockingStation

	attr_reader :bikes
	DEFAULT_CAPACITY = 20
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
		@bikes.length == DEFAULT_CAPACITY ? true : false
	end

	def empty?
		@bikes.length == 0 ? true : false
	end
end
