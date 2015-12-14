class TimeAdder 

def Sum_time(first_time, second_time)
  regex =/^([0-9]|0[0-9]|1[0-9]|2[0-3]):[0-5][0-9]:[0-5][0-9]$/
  time_sum_array = Array.new  
  if(regex.match(first_time) && regex.match(second_time))
    first_time_array = first_time.split(":")
    second_time_array = second_time.split(":")
    size = first_time_array.size
    temp_value = 0
    min = 0
    day = 0
    (size-1).downto(0).each do |index|
      place_holder = first_time_array[index].to_i + second_time_array[index].to_i 
      if(index.to_i == 0)
        place_holder += min
        temp_value = (place_holder.to_i / 24).to_f
        mod  = place_holder.to_i % 24
        get_day =  temp_value.to_s.split(".")
        day = get_day[0] if( mod >= 0 && place_holder.to_i >= 24)
        place_holder = "#{day.to_i > 0 ? day.to_i : ""} #{day.to_i > 0 ? "day" : ""}#{day.to_i > 1 ? "s" : ""}  #{mod}"  if(day.to_i > 0)
        time_sum_array[index] = place_holder
      else
        place_holder += min if(min > 0)
        min = 0 if(index == 1)
        temp_value = (place_holder.to_i / 60).to_f
        mod  = place_holder.to_i % 60
        get_time =  temp_value.to_s.split(".")
        time = get_time[0] if( mod >= 0 && place_holder.to_i >= 60)
        place_holder = ":#{mod > 0 ? mod : ""}"
        min = time.to_i
        time_sum_array[index] = place_holder
      end

    end
    else
      place_holder = "Invalid time format"
      time_sum_array.push(place_holder)
     end
      time_sum_array
end
end