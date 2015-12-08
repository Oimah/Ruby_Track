require_relative "../lib/array.rb"

class Main
def initialize
  array_from_input = get_input
  power_input = get_power
 array_powered = array_from_input.power!(power_input)
 puts array_powered
end

def get_input
 puts "Enter number" 
 string_input = gets.chomp.delete(",").delete(" ")
 string_input = string_input.split("")
end

def get_power
puts "Enter power"
gets.chomp.delete(",").delete(" ").to_i
end

end

 Main.new
