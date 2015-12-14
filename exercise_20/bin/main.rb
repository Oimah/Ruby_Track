require_relative "../lib/interest.rb"

  input_hash = Hash.new
  puts "enter principal amount"
  input_hash[:principal] = gets.chomp.to_i
  puts "enter duration"
  input_hash[:duration]  = gets.chomp.to_i
  puts "number of times compounded per year"
  input_hash[:compounded_times] = gets.chomp.to_i
  interest = Interest.new
  puts "Compound Interest => #{interest.calculate_compound_interest(input_hash)}"
  puts "Simple Interest => #{interest.calculate_simple_interest(input_hash)}"
  puts "Difference in amount => #{interest.difference_in_interests(input_hash)}"
