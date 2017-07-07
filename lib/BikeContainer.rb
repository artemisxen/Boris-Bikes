module BikeContainer

	DEFAULT_CAPACITY = 20

  def bikes
    @bikes ||= []
  end

  def capacity
    @capacity ||= DEFAULT_CAPACITY
  end

  def capacity=(value)
    @capacity = value
  end

  def bike_count
    bikes.count
  end

	def release(bike)
		raise "No bikes available to release" if empty?
    raise "Bike not found" if !bikes.include? bike
	  bikes.delete(bike)
    bike
	end

	def store(bike)
		raise "Maximum capacity" if full?
		bikes << bike
	end


	private
	def full?
		bike_count == capacity ? true : false
	end

	def empty?
		bike_count == 0 ? true : false
	end
end
