require_relative "./bike_container.rb"

class Garage
	include BikeContainer

	DEFAULT_CAPACITY = 10

	def initialize(options = {})
		@capacity = options.fetch(:capacity, DEFAULT_CAPACITY) 
	end

	def fix_all_bikes
	   bikes.each_entry {|bike| bike.fix}
	end


	
end