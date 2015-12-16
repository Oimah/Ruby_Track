class String
 
  def find_vowels_and_replace
   "Vowels replaced in #{gsub!(/[aeiou]/ , '*') }\n" 
  end
end