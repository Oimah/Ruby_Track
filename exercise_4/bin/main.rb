require_relative "../lib/palindrome_processor.rb"

  @palindrome_instance = PalindromeProcessor.new
  puts "Enter a string"
  @palindrome_instance.check_if_word_is_palindrome(gets.chomp.to_s)
  