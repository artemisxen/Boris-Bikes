require 'pry'
require './lib/bike.rb'
class DockingStation

	attr_reader :bikes, :capacity

	DEFAULT_CAPACITY = 20

	def initialize(capacity = DEFAULT_CAPACITY)
		@bikes = []
		@capacity = capacity
	end

	def release_bike
		released_bike = 0
		raise "No bikes available to release" if empty?
		@bikes.each do |bike|
			if bike.working? == true
				released_bike = bike
				@bikes.delete(bike)
				break
			end
		end
		released_bike
	end

	def dock(bike)
		raise "Docking Station full" if full?
		@bikes << bike
		"This bike is broken!" if bike.working? == false
	end


	private
	def full?
		@bikes.length == DEFAULT_CAPACITY ? true : false
	end

	def empty?
		@bikes.length == 0 ? true : false
	end
end
