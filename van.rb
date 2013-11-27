require_relative "./bike_container.rb"
require_relative "./bikes.rb"



class Van 
	include BikeContainer


	DEFAULT_CAPACITY = 10
    
    def initialize(options = {})
	  @capacity = options.fetch(:capacity, DEFAULT_CAPACITY) 
	end

end