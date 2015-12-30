class Array 
  def get_hash
    array_hash = Hash.new 
    self.each_with_index.map { |x,i| array_hash[x] = self[i, x.to_s.length] }
    array_hash
  end
end