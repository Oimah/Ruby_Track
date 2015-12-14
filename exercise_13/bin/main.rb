require_relative "../lib/change_factorial_with_range.rb"

 puts "Enter the factorial"
 ChangeFactorialWithRange.new.range_factorial_rewrite(gets.chomp.to_i).each do|key, value|
  puts "  #{key} : #{value}"
 end
