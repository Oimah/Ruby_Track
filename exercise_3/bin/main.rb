require_relative "../lib/fibonacci_processor.rb"

class Main
  def Get_number
    puts "enter a number"
    gets.to_i.generate_fibonacci_series do |n|
    print n
    print ", "
    end
  end
end

Main.new.Get_number
