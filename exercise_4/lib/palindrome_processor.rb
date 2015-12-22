class String
 
  def check_if_word_is_palindrome
  	word_palindrome = self.gsub(/[," "]/, "").strip.downcase
  	reversed_word = word_palindrome.reverse

  	if(word_palindrome == reversed_word)
  	  puts "#{self}\nis a palindrome word"
  	else
  	  puts "#{self}\nis not a palindrome word"	
  	end

  	puts "Please enter Q/q to exit or press any other key to continue"

  	key = gets.chomp.strip
  	if (key.downcase != "q")
      puts "Enter another string"
      gets.to_s.check_if_word_is_palindrome
  	end
  end
end