class ReplaceVowel
 
  def get_input_string
	  puts "enter new string"
	  @input_string  = gets.to_s.chomp.downcase
  end

  def find_vowels_and_replace(input_string)
    vowels = ["a", "e", "i", "o", "u"]
    vowels.each do |v|
      input_string = input_string. gsub(/#{v}/i , '*')
    end
    print "Vowels replaced in #{input_string}" 
    puts ""
  end
end