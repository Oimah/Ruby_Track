class Vehicle 
  attr_accessor :name, :price
  
  def initialize()
  	@name = "Porch Paramera"
    @price = 15000000
  end
  def Show_vehicle_detail
    puts "Vehicle name #{@name}"
    puts "Vehicle price #{@price}"
  end
end