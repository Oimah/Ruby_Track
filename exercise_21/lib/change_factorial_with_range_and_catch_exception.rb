class Fixnum 

  def range_factorial_rewrite_with_exception
    hash = Hash.new
    begin
    raise ArgumentError , "That is an invalid number" unless self.to_i > 0 
      (2..self).collect{|i| 
        hash["result"] =(hash["result"].to_i == 0 ? 1 : hash["result"].to_i ) * i 
        hash["factorial"] =hash["factorial"].to_s.insert(0, "#{i} #{i - 1 == 1 ? "* 1 " : "*"} ")  
      }
      hash
    rescue ArgumentError
     puts "That is an invalid number"
     hash
    end
  end
end