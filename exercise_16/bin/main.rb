require_relative "../lib/high_light_matching_string.rb"

   puts "Enter a sentence"
   string_value = gets.chomp.to_s
   puts "Enter a string to search"
   search_string_value = gets.chomp.to_s
   puts HighLightMatchingString.new.match_string(string_value, search_string_value)
