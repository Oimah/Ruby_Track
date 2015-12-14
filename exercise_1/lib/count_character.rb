class String
	def count_alphabet_occurencies
		 @alpabets = ('a'..'z').to_a
	  alphabet_count_hash = Hash.new
	  @alpabets.each do |character|
	  occurence_count = self.count(character)
		if(occurence_count > 0)
		  alphabet_count_hash[character] = occurence_count
		end
	end
	  print alphabet_count_hash
	  puts ""
	end
end