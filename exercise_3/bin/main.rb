require_relative "../lib/processor.rb"

processor_instance =Processor.new
processor_instance.generate_fibonacci_series do |n|
	print n
	 print ", "
  end	
