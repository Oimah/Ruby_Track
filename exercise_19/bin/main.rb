require_relative "../lib/time_adder_in_range.rb"

  puts  TimeAdderInRange.new.get_actual_time(["23:01:01", "23:09:59", "23:59:59", "2:59:59", "23:59:59", "03:59:59"])  
