class String
 
  def find_vowels_and_replace
   self.gsub!(/[aeiou]/ , '*') 
    print "Vowels replaced in #{self}" 
    puts ""
  end
end