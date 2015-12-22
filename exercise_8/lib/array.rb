class Array 

  def power(exponent)
  	array = Array.new
    self.each { |x| array.push(x.to_i ** exponent) }
    print array
  end
 end