require_relative "../lib/palindrome_processor.rb"

class Main
  def initialize
    @palindrome_instance = PalindromeProcessor.new
  end

  def check_if_word_is_palindrome
    puts "Enter a string"
    @palindrome_instance.check_if_word_is_palindrome(gets.chomp.to_s)
  end
end

main =Main.new
main.check_if_word_is_palindrome
