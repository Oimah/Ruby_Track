require_relative "../lib/vehicle.rb"
require_relative "../lib/bike.rb"

	
  @vehicle = Vehicle.new
  @bike = Bike.new

  puts "Vehicle name #{@vehicle.name}"
  puts "Vehicle price #{@vehicle.price}"

  puts ""
  puts "Vehicle name #{@bike.name}"
  puts "Vehicle price #{@bike.price}"
  puts "Vehicle dealer #{@bike.dealer}"
