class HashClass 


  def get_hash(array)
	hash = Hash.new
	array_hash = Hash[array.map.with_index.to_a]
    for value in array
    	index_of_value = array_hash[value]
      size = value.to_s.length
      array_hash[value] = array[index_of_value.to_i, size.to_i]
    end
    array_hash
  end
end