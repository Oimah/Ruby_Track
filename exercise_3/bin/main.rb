require_relative "../lib/fibonacci_processor.rb"

class Main
  def initialize
    processor_instance =FibonacciProcessor.new
    processor_instance.generate_fibonacci_series do |n|
    print n
    print ", "
    end
  end
end

Main.new
