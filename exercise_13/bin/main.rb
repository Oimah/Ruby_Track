require_relative "../lib/change_factorial_with_range.rb"

  puts "Enter the factorial"
  gets.chomp.to_i.range_factorial_rewrite.each {|key, value| puts "  #{key} : #{value}"}
