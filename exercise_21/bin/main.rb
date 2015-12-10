require_relative "../lib/change_factorial_with_range_and_catch_exception.rb"

class Main

def get_input_string_and_output_factorial
	puts "Enter the factorial"
 ChangeFactorialWithRangeAndCatchException.new.range_factorial_rewrite_with_exception(gets.chomp.to_i).each do|key, value|
    puts "  #{key} : #{value}"
 end
end
end

Main.new.get_input_string_and_output_factorial
