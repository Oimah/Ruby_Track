require_relative "../lib/vehicle.rb"
require_relative "../lib/bike.rb"

class Main
def initialize	
  @vehicle = Vehicle.new
  @bike = Bike.new
  
end

def display_initial_property_values_for_vehicle
  puts "Vehicle name #{@vehicle.get_name}"
  puts "Vehicle price #{@vehicle.get_price}"
end

def display_initial_property_values_for_bike
  puts ""
  puts "Vehicle name #{@bike.get_name}"
  puts "Vehicle price #{@bike.get_price}"
  puts "Vehicle dealer #{@bike.get_dealer}"
end

end

instance = Main.new
instance.display_initial_property_values_for_vehicle
instance.display_initial_property_values_for_bike