require_relative "../lib/high_light_matching_string.rb"

class Main

 def get_input_string_and_output_matched_string
   puts "Enter a string"
   string_value = gets.chomp.to_s
    puts "Enter a string"
   search_string_value = gets.chomp.to_s
   puts HighLightMatchingString.new.match_string(string_value, search_string_value)
 end
end

Main.new.get_input_string_and_output_matched_string
