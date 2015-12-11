require_relative "../lib/time_adder_in_range.rb"

class Main
  def initialize
     @timerange_instance =  TimeAdderInRange.new
  end

  #method to get actual sum starts here
  def calculate_total_time
    puts  @timerange_instance.get_actual_time(["23:01:01", "23:09:59", "23:59:59", "2:59:59", "23:59:59", "03:59:59"])  
  end
end

Main.new.calculate_total_time
