require "time"
class TimeAdderInRange 
  def initialize
    @current_time = Time.parse("2015-12-23")
    @validation_regex =/^([0-9]|0[0-9]|1[0-9]|2[0-3]):[0-5][0-9]:[0-5][0-9]$/
  end
  def Sum_time(time_input)
    if(time_input.size > 0)
    time_split = time_input.split(",")
    (0...time_split.length).each{|key| get_total_time(Time.parse(time_split[key])) if @validation_regex.match(time_split[key])}
    day = @current_time.day - Time.now.day
    print "#{day  > 0 ? day  : ""} #{day > 0 ? "day ,": ""} #{@current_time.hour}:#{@current_time.min}: #{@current_time.sec}"
    else
      raise "Invalid time" 
    end
  end

  def get_total_time(time)
    @current_time = @current_time + time.sec + (time.sec) +(time.min * 60) + (time.hour * 3600)
  end
end