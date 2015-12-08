require_relative "../lib/swap_case.rb"

class Main
def initialize
puts "Type a sentence"	
 puts SwapCase.new(gets.chomp).to_s
end
end

 Main.new
