 require_relative "../lib/high_light_matching_string.rb"

 puts "Enter a sentence"
 string_value = gets.chomp.to_s
 puts "Enter a string to search"
 puts gets.chomp.to_s.match_string(string_value)
