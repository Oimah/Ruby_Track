class Fixnum 

def range_factorial_rewrite
  hash = Hash.new
  (2..self).collect{|i| 
    hash["result"] =(hash["result"].to_i == 0 ? 1 : hash["result"].to_i ) * i 
    hash["factorial"] =hash["factorial"].to_s.insert(0, "#{i} #{i - 1 == 1 ? "* 1 " : "*"} ")  
  }
  hash
end
end