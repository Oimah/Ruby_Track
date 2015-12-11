require_relative "../lib/replace_vowel.rb"

class Main
  def initialize
    @replace_vowel_instance =ReplaceVowel.new
  end

  def find_vowels_and_replace
    puts "enter new string"
    @replace_vowel_instance.find_vowels_and_replace(gets.chomp.to_s)
  end
end

main = Main.new
main.find_vowels_and_replace