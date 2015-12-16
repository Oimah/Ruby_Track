class String
	def count_alphabet_occurencies
	  alphabet_count_hash = Hash.new
	  ('a'..'z').to_a.each { |character|
			alphabet_count_hash[character] = self.count(character) if self.count(character) > 0
		}
	  alphabet_count_hash
	end
end

