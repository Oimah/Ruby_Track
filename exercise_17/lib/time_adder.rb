class TimeAdder 
  def Sum_time(first_time, second_time)
    regex =/^([0-9]|0[0-9]|1[0-9]|2[0-3]):[0-5][0-9]:[0-5][0-9]$/
    time_sum_array = Array.new  
    if(regex.match(first_time) && regex.match(second_time))
      time = first_time.split(":")
      addtime = second_time.split(":")
      min_in_sec=(time[2].to_i+addtime[2].to_i)/60
      cur_sec=(time[2].to_i+addtime[2].to_i)%60
      hour_in_min=(time[1].to_i+addtime[1].to_i+min_in_sec)/60
      cur_min=(time[1].to_i+addtime[1].to_i+min_in_sec)%60
      cur_hour=(time[0].to_i+addtime[0].to_i+hour_in_min)%24
      day_in_hour=((time[0].to_i+addtime[0].to_i+hour_in_min)/24).to_s.split(".")
      cur_hour=24 if cur_hour==0
    end
    print "#{day_in_hour[0].to_i  > 0 ? day_in_hour[0].to_i  : ""} #{day_in_hour[0].to_i > 0 ? "day ,": ""} #{cur_hour}:#{cur_min}: #{cur_sec}"
  end
end