require_relative "../lib/time_adder.rb"

  return_value = TimeAdder.new.Sum_time("23:23:07", "23:59:59")
    for time in return_value
      print time
    end
  puts ""
 