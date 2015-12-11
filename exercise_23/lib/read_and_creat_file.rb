class ReadAndCreateFile 
  def read_from_and_write_to(file_param) 
  record_array = Array.new
    data =  File.read(file_param) #do |data|
    record_array = data.split(',')
    file = File.new("../lib/employee_data.csv", "w")
      (2...record_array.size).each do |index|
        mod = index%2
        file.puts "#{record_array[index]}(#{record_array[1]}:#{record_array[index + 1]})" if mod == 0
      end
    file.close
  end

 
end