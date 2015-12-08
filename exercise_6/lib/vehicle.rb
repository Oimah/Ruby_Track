class Vehicle 
  attr_accessor :name, :price
  
  def initialize()
  	@name = "Porch Paramera"
    @price = 15000000
  end

def get_name
  @name
end
  
def get_price
  @price
end
end