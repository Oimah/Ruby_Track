require_relative "../lib/change_factorial_with_range_and_catch_exception.rb"

  puts "Enter the factorial"
  gets.chomp.to_i.range_factorial_rewrite_with_exception.each {|key, value| puts "  #{key} : #{value}"}
