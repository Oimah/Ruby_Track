class Fixnum
  
  def generate_fibonacci_series
    begin
    raise ArgumentError, "Invalid number" unless  self > 0
  	(0..self).each do |n|
      nth_value = (n-1) + (n-2)
      yield (nth_value) < 1 ? n : nth_value 
    end 
  rescue
    puts "invalid number"
  end
  end
end