class ChangeFactorialWithRangeAndCatchException 

def range_factorial_rewrite_with_exception(factorial)
  hash = Hash.new
    begin
      check_number(factorial)
  factorial_string = ""
  default = 1
  if(factorial.to_i == 0)
     hash["factorial"] = "1"
     hash["result"] = default
    return hash
  end
(factorial).downto(1).each do |i| 
    factorial_string.concat("#{i} #{i == 1 ? "" : "*"} ")
    default *= i
end
  
    hash["factorial"] = factorial_string
    hash["result"] =  default
    hash
  rescue
    hash["factorial"] = "invalid number"
     hash["result"] =  factorial
     hash
  end

end

def check_number(number)
  raise ArgumentError , "That is an invalid number" unless number.to_i > 0
end
end