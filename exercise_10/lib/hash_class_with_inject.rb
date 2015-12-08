class HashClassWithInject 


  def get_hash(array)
	hash = Hash.new
  even_hash = Hash.new
  odd_hash = Hash.new
  odd_array =  []

	array_hash = Hash[array.map.with_index.to_a]
    for value in array
    	index_of_value = array_hash[value]
      size = value.to_s.length
      modulus = size%2
      if(modulus.to_i > 0 )
        #(5..10).inject {|sum, n| sum + n }
        (index_of_value.to_i...size.to_i).inject {|odd_array, n| Array.new.push(array[n])}
       odd_hash[value] = odd_array #array[index_of_value.to_i, size.to_i]
      else
       even_hash[value] = array[index_of_value.to_i, size.to_i]
      end
    end
      hash["even"] = even_hash
      hash["odd"] = odd_hash
      hash
  end

  def get_hash_for_inject_construct(index, value, array)
   
  end
end