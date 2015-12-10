require_relative "../lib/prime_numbers.rb"

class Main

 def get_input_string_and_output_prime_factors
   puts "Enter a number"
   puts PrimeNumber.new.get_prime_number_in_a_range(gets.chomp.to_i)
 end
end

Main.new.get_input_string_and_output_prime_factors
