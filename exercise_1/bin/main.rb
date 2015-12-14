require_relative "../lib/count_character.rb"

class Main

  def get_input_string
    puts "enter new string"
   gets.chomp.to_s.count_alphabet_occurencies
  end


end
main = Main.new.get_input_string
