require "time"
class TimeAdderInRange 
  def initialize
    @current_time = Time.now
    @validation_regex =/^([0-9]|0[0-9]|1[0-9]|2[0-3]):[0-5][0-9]:[0-5][0-9]$/
  end
  def Sum_time(time_input)
    time_split = time_input.split(",")
    time_split.length.times{|key| get_total_time(Time.parse(time_split[key])) if @validation_regex.match(time_split[key])}
    day = @current_time.day - Time.now.day
    print "#{day  > 0 ? day  : ""} #{day > 0 ? "day ,": ""} #{@current_time.hour}:#{@current_time.min}: #{@current_time.sec}"
  end

  def get_total_time(time)
    @current_time = @current_time + time.sec + (time.sec) +(time.min * 60) + (time.hour * 3600)
  end
end