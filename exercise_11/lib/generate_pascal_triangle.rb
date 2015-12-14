class GeneratePascalTriangle 

def generate_pascal_triangle_array(row_count)
(0..row_count).each{|r|
                   yield_variable_for_array = pascal_array=[1]
                   term=1
                   k=1
                   (0...r).step(1){|index|
                                   term=term*(r-k+1)/k
                                   pascal_array.push(term)
                                   k+=1
                                  }
                   yield(p yield_variable_for_array)
                   }
end  
end