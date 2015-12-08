class Processor
 
  def initialize
  	puts "Enter a word"
  end

  def check_if_word_is_palindrome(word)
  	word = word.to_s.delete(",").delete(" ").strip.downcase
  	#puts word
  	reversed_word = word.reverse
    #puts reversed_word

  	if(word == reversed_word)
  	  puts "'#{word}' is a palindrome word"
  	else
  	  puts "'#{word}' is not a palindrome word"	
  	end

  	puts "Please enter Q/q to exit or press any other key to continue"
  	key = gets.chomp.strip
  	if (key.downcase != "q")
  	 puts "Enter another word"
     check_if_word_is_palindrome(gets.to_s)
  	end
	
  end
end