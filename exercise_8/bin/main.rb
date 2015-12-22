require_relative "../lib/array.rb"

  puts "Enter an array" 
  Array_input = gets.chomp.gsub(/[, " "]/, "").split("")
  puts "Enter power"
  Array_input.power(gets.chomp.gsub(/[, " "]/, "").to_i)
  puts 