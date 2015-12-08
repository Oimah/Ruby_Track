require_relative "vehicle.rb"
class Bike < Vehicle
  attr_accessor :dealer

  def initialize
    @name = "Benz 4matic"
    @price = 10000000
    @dealer = "White house autors"
  end

  def get_dealer
  @dealer
end
 end