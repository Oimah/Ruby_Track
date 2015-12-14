require_relative "../lib/fibonacci_processor.rb"

puts "enter a number"
gets.to_i.generate_fibonacci_series do |n|
  print n
  print ", "
end