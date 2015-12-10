require_relative "../lib/time_adder_in_range.rb"

class Main
 def get_input_string_and_output_sum_of_time
 	return_value = TimeAdderInRange.new.Sum_time_range(["23:23:07", "23:59:59"])
  #puts return_value
		for time in return_value
			print time
		end
	puts ""
 end
end

Main.new.get_input_string_and_output_sum_of_time
