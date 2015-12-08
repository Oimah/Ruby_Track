class Processor
  
  def generate_fibonacci_series
  	(0..1000).each do |n|
      nth_value = (n-1) + (n-2)
      yield (nth_value) < 1 ? n : nth_value 
    end 
  end
end