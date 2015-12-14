require_relative "../lib/array.rb"

  puts "Enter number" 
  array_from_input = gets.chomp.delete(",").delete(" ").split("")
  puts "Enter power"
  power_input = gets.chomp.delete(",").delete(" ").to_i
  print array_from_input.power!(power_input)
  puts 