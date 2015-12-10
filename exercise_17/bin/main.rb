require_relative "../lib/time_adder.rb"

class Main
 def get_input_string_and_output_sum_of_time
  return_value = TimeAdder.new.Sum_time("23:23:07", "23:59:59")
    for time in return_value
      print time
    end
  puts ""
 end
end

Main.new.get_input_string_and_output_sum_of_time
