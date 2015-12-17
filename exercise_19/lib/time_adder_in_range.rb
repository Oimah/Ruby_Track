
class TimeAdderInRange 
  attr_accessor :_regex, :min_placeholder, :hour_placeholder, :day_placeholder
  def initialize
    @_regex =/^([0-9]|0[0-9]|1[0-9]|2[0-3]):[0-5][0-9]:[0-5][0-9]$/
  end

  def split_time_generate_array(time_array)
    if(time_array.size > 0)
     (0...time_array.size).each do |nth|
        begin 
        raise ArgumentError, 'inconrrect time format' unless @_regex.match(time_array[nth])
          temp_time_array = time_array[nth].split(":")
          time_array[nth] = temp_time_array
        rescue
          puts "incorrect time format"
          return Array.new
        end
      end
    end
    time_array
  end

  def get_seconds(time_array)
    @min_placeholder = 0
    sec = 0
    for time in time_array
      sec += time[2].to_i 
      if(sec > 59)
        sec = sec % 60
        @min_placeholder += 1
      end
    end
    sec
  end

  def get_min(time_array)
    @hour_placeholder = 0
    min = @min_placeholder.to_i
    for time in time_array
      min += time[1].to_i 
      if(min > 59)
        min = min % 60
        @hour_placeholder += 1
      end
    end
    min
  end


  def get_hour(time_array)
    @day_placeholder = 0
    hour = @hour_placeholder.to_i
    for time in time_array
      hour += time[0].to_i 
      if(hour > 23)
        hour = hour % 24
        @day_placeholder += 1
      end
    end
    hour
  end

  def get_actual_time(_time_array)
    time_array = split_time_generate_array(_time_array)
    sec = get_seconds(time_array)
    min =get_min(time_array)
    hour = get_hour(time_array)
    output_string = "#{@day_placeholder.to_i > 0 ? @day_placeholder.to_i : ""} #{@day_placeholder.to_i > 0 ? "day" : ""}#{@day_placeholder.to_i > 1 ? "s" : ""}  #{hour}:#{min}:#{sec}"  
  end
end