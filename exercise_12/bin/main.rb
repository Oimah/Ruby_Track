require_relative "../lib/character_count.rb"

class Main

def get_input_string_and_output_case_count
	puts "Enter the string"
 CharacterCount.new.generate_case_count_hash(gets.chomp.to_s).each do|key, value|
    puts "  #{key} : #{value}"
 end
end
end

Main.new.get_input_string_and_output_case_count
