require_relative "../lib/prime_numbers.rb"

 puts "Enter a number to get the prime factors"
 puts PrimeNumber.new.get_prime_number_in_a_range(gets.chomp.to_i)
