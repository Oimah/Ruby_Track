require 'prime'

class PrimeNumber 

def get_prime_number_in_a_range(string_value)
prime_number_array = Array.new
   if(string_value.to_i < 0)
    return "number must >= 2"
	end
	(0..string_value.to_i).step(1).each do |n|
     if(Prime.prime?(n)) 
        prime_number_array.push(n)
     end 
     end
	"Prime Number from 0-#{string_value}\n #{prime_number_array}"
end
end