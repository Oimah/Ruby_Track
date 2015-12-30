require_relative "../lib/character_count.rb"

puts "Enter the string"
CharacterCount.new.generate_case_count_hash(gets.chomp).each {|key, value| puts "  #{key} : #{value}" }
