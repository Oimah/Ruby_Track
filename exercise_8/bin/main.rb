require_relative "../lib/array.rb"

  puts "Enter an array" 
  gets.chomp.delete(",").delete(" ").split("").power
  puts 