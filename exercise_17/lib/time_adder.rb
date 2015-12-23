require 'time'
class TimeAdder 
 def Sum_time(time_input)
    regex =/^([0-9]|0[0-9]|1[0-9]|2[0-3]):[0-5][0-9]:[0-5][0-9]$/
    time_split = time_input.split(",")
    if(regex.match(time_split[0]) && regex.match(time_split[1]))
      time = get_total_time(Time.parse(time_split[0]), Time.parse(time_split[1]))
      day = time.day - Time.parse(time_split[0]).day 
      print "#{day  > 0 ? day  : ""} #{day > 0 ? "day ,": ""} #{time.hour}:#{time.min}: #{time.sec}"

    else
      raise "Invalid time"  
    end
    
  end

  def get_total_time(time1, time2)
    time_sum = time1 + time2.sec + (time2.sec) +(time2.min * 60) + (time2.hour * 3600)
  end
end

