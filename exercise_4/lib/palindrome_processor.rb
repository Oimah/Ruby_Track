class PalindromeProcessor
 
  def check_if_word_is_palindrome(word)
  	word_palindrome = word.to_s.delete(",").delete(" ").strip.downcase
  	reversed_word = word_palindrome.reverse

  	if(word_palindrome == reversed_word)
  	  puts "'#{word}' is a palindrome word"
  	else
  	  puts "'#{word}' is not a palindrome word"	
  	end

  	puts "Please enter Q/q to exit or press any other key to continue"

  	key = gets.chomp.strip
  	if (key.downcase != "q")
      puts "Enter another string"
      check_if_word_is_palindrome(gets.to_s)
  	end
  end
end