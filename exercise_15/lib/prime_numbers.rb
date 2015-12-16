require 'prime'
class Fixnum 

  def get_prime_number_in_a_range
    prime_number_array = Array.new
  	(0..self).step(1).each{|n| prime_number_array.push(n)  if Prime.prime?(n)}
  	"Prime Number from 0-#{self}\n #{prime_number_array}"
  end
end