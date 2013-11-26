class DockingStation
  DEFAULT_CAPACITY = 20

  def initialize(options = {})
  	@capacity = options.fetch(:capacity) || DEFAULT_CAPACITY
	@bikes = []
  end

  def bike_count
    @bikes.count
  end

  def dock (bike)
  	raise "station is full" if full?
	@bikes << bike
  end	

  def release (bike)
	@bikes.delete(bike)
  end

  def full?
    bike_count == @capacity
  end

  def working_bikes
  	@bikes.select {|bike| bike.broken? }
  end

  def available_bikes
  	@working_bikes = working_bikes
  end
end


