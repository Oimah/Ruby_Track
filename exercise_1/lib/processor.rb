class Processor
  attr_accessor :input_value, :alpabets
	
	def initialize
	  @alpabets = ('a'..'z').to_a
	end

	def get_input_string
	 # print 	@alpabets 
	  puts "enter new string"
	  @input_value  = gets.to_s.chomp
	end

	def count_alphabet_occurencies
	  alphabet_count_hash = Hash.new
	  @alpabets.each do |character|
	  occurence_count = @input_value.count(character)
		if(occurence_count > 0)
		  alphabet_count_hash[character] = occurence_count
		end
	end
	  print alphabet_count_hash
	  puts ""
	end
end