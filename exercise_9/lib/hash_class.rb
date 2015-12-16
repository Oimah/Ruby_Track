class Array 
  def get_hash
    array_hash = Hash[self.map.with_index.to_a]
    for value in self
      array_hash[value] = self[array_hash[value].to_i, value.to_s.length]
    end
    array_hash
  end
end