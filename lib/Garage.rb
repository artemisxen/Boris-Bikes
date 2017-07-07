require './lib/bike.rb'
require 'BikeContainer'
require 'bike'

class Garage
	include BikeContainer

	def initialize(capacity = DEFAULT_CAPACITY)
		@bikes = []
		@capacity = capacity
	end

  def store bike
      bike.fix
      @bikes << bike
  end

end
