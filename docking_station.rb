

class DockingStation
   include BikeContainer
	
  DEFAULT_CAPACITY = 20

  def initialize(options = {})
  	@capacity = options.fetch(:capacity, DEFAULT_CAPACITY) 
  end
  

end
  
 



