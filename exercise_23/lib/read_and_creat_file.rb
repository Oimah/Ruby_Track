class ReadAndCreateFile 
  def read_from_and_write_to
    file_param = "../lib/newfile.csv"
    begin
    raise InvalidFileContentError  unless File.file?(file_param)
    record_array = Array.new
    data =  File.read(file_param) 
    record_array = data.split(',')
    file = File.new("../lib/employee_data.csv", "w")
    (2...record_array.size).each do |index|
      mod = index%2
      file.puts "#{record_array[index]}(#{record_array[1]}:#{record_array[index + 1]})" if mod == 0
      end
    file.close
    puts "File writen successfully"
    rescue InvalidFileContentError
      puts "No such file"
    end
  end 
end

class InvalidFileContentError < StandardError
  def initialize(msg="File is empty" )
    super
  end
end
