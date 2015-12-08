require_relative "../lib/processor.rb"

processor_instance =Processor.new
processor_instance.check_if_word_is_palindrome(gets.to_s)
