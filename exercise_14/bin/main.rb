require_relative "../lib/reverse_string.rb"

  puts "Enter the string to reverse"
  puts ReverseString.new.reverse_string(gets.chomp.to_s)
