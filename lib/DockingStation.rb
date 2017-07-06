require 'pry'
require './lib/bike.rb'
class DockingStation

	attr_reader :bikes
	attr_reader :capacity

	DEFAULT_CAPACITY = 20
	def initialize(capacity = DEFAULT_CAPACITY)
		@bikes = []
		@capacity = capacity
	end

	def release_bike
		#Bike.new
		raise "No bikes available to release" if empty?
		@bikes.each_with_index do |bike, index|
		#	binding.pry
			if @bikes[index].working? == true
				#binding.pry
				@bikes.delete_at(index)
			#	binding.pry
				break
			end
		end
		#@bikes.pop
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
