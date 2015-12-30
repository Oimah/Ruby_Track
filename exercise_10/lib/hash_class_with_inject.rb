class HashClassWithInject 


  def get_hash(array)
	  hash = Hash.new
    odd_array =  Array.new
    even_array =  Array.new

	  array_hash = Hash[array.map.with_index.to_a]
      array.each do |value|
              	   index_of_value = array_hash[value]
                   size = value.to_s.length
                   modulus = size%2
                   if(modulus.to_i > 0 )
                     get_even_or_odd_array(odd_array, array, value)
                   else
                     get_even_or_odd_array(even_array, array, value)
                   end
                 end
   hash["even"] = even_array
   hash["odd"] = odd_array
   hash
  end

  def get_even_or_odd_array(hash_array, array, value)
    array.inject({}) do |inect_array,  element|
                      hash_array.push(element) if element == value
                      hash_array
                     end
  end
end