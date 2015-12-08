class Processor
  attr_accessor :input_string

  def get_input_string
	 # print 	@alpabets 
	  puts "enter new string"
	  @input_string  = gets.to_s.chomp.downcase
  end

  def find_vowels_and_replace
  	# puts "Vowels replaced in #{@input_string}"
    @input_string = @input_string.sub!(/aeiou]/, "*")
    print "Vowels replaced in " 
    print     @input_string
    puts ""
  end
end