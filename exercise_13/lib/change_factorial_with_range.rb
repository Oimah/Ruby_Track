class ChangeFactorialWithRange 

def range_factorial_rewrite(factorial)
  hash = Hash.new
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
end
end