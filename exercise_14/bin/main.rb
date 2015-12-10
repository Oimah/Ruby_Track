require_relative "../lib/reverse_string.rb"

class Main

 def get_input_string_and_output_revered_string
   puts "Enter the string"
   puts ReverseString.new.reverse_string(gets.chomp.to_s)
 end
end

Main.new.get_input_string_and_output_revered_string
