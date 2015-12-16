class String
 
  def find_vowels_and_replace
    print "Vowels replaced in #{gsub!(/[aeiou]/ , '*') }" 
    puts ""
  end
end