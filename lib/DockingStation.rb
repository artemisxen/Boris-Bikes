require 'pry'
require './lib/bike.rb'
require 'BikeContainer'

class DockingStation
	include BikeContainer

	def initialize(capacity = DEFAULT_CAPACITY)
		@bikes = []
		@capacity = capacity
	end

	def release_bike
		released_bike = 0
		raise "All bikes are broken" if bikes.all? { |bike| bike.working? == false}
		bikes.each do |bike|
			if bike.working? == true
				released_bike = bike
				release bike
				break
			end
		end
		released_bike
	end

	def dock(bike)
		store bike
		"This bike is broken!" if bike.working? == false
	end
end
