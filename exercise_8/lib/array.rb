class Array 

  def power
    puts "Enter power"
    exponent = gets.chomp.delete(",").delete(" ").to_i
  	array = Array.new
    self.each { |x| array.push(x.to_i ** exponent) }
    print array
  end
 end