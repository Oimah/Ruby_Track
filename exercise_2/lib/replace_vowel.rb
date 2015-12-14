class String
 
  def find_vowels_and_replace
   # vowels = ["a", "e", "i", "o", "u"]
    #vowels.each do |v|
      self.gsub(/^aeiou/ , '*') #if ( input_string =~ /#{v}/ )
    #end
    print "Vowels replaced in #{self}" 
    puts ""
  end
end