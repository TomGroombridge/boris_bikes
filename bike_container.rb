module BikeContainer
    
    def bikes
    	@bikes ||= []
    end

    def capacity
    	@capacity ||= DEFAULT_CAPACITY
    end

	def bike_count
		bikes.count
	end

	def dock (bike)
		raise "station is full" if full?
		bikes << bike
	end

	def release (bike)
		bikes.delete(bike)
	end

	def full?
		bike_count == capacity
	end

	def available_bikes
		bikes.select {|bike| !bike.broken? }
	end

	def transfer_bike_to(holder)
    	bikes.each_entry do |bike| 
    		holder.dock(bike)
    		self.release(bike)
    	end
    end


end