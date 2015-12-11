require_relative "../lib/count_character.rb"

class Main
def initialize
  @input_instance_varialble = CountCharacter.new
end
  def get_input_string
    puts "enter new string"
   @input_instance_varialble.get_input_string(gets.chomp.to_s)
  end

  def count_alphabet_occurencies
    @input_instance_varialble.count_alphabet_occurencies
  end

end
main = Main.new
main.get_input_string
main.count_alphabet_occurencies
