module BikeContainer

  	attr_accessor :bikes, :capacity

  	DEFAULT_CAPACITY = 20

  	def set_capacity capacity
  		@capacity = capacity
  	end

  	def release_bike (working = true)
  		raise "No bikes available to release" if empty?
      released_bike = 0
      @bikes.each do |bike|
          if bike.working? == working
            released_bike = bike
            bikes.delete(bike)
            break
          else
            released_bike = bike
            bikes.delete(bike)
            break
          end
      end
      released_bike
  	end


  	def dock(bike)
  		raise "Full!" if full?
  		bikes << bike
  	end

  	def bike_count
  			bikes.length
  	end

  	private
  	def full?
  		bikes.length == DEFAULT_CAPACITY ? true : false
  	end

  	def empty?
  		bikes.length == 0 ? true : false
  	end

end
