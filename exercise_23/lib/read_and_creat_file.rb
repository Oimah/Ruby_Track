class ReadAndCreateFile 
  def read_from_and_write_to
    file_param = File.expand_path("../read_and_create_file.csv", __FILE__)
    begin
    raise InvalidFileContentError  unless File.file?(file_param)
      record_array = File.read(file_param).split(',')
      file = File.new("../lib/employee_data.csv", "w")
      (2...record_array.size).each{|index| file.puts "#{record_array[index]}(#{record_array[1]}:#{record_array[index + 1]})" if index.even?}
      file.close
      "File writen successfully"
    rescue InvalidFileContentError
      "No such file"
    end
  end 
end

class InvalidFileContentError < StandardError
  def initialize(msg="File is empty" )
    super
  end
end
