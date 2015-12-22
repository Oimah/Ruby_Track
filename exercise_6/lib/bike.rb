require_relative "vehicle.rb"
class Bike < Vehicle
  attr_accessor :dealer

  def initialize
    @name = "White Horse"
    @price = 10000000
    @dealer = "White house autors"
  end
  def Show_Bike_detail
    puts ""
    puts "Bike name #{@name}"
    puts "Bike price #{@price}"
    puts "Bike dealer #{@dealer}"
  end
 end