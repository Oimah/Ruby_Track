require_relative "../lib/read_and_creat_file.rb"

class Main
  def read_write_file
    file = "../lib/newfile.csv"
   begin
    check_file_exist(file)
    ReadAndCreateFile.new.read_from_and_write_to(file)
    puts "File writen successfully"
   rescue InvalidFileContentError
      puts "No such file"
   end
  end

  def check_file_exist(file)
    raise InvalidFileContentError unless File.file?(file)
  end
end


class InvalidFileContentError < StandardError
  def initialize(msg="File is empty" )
    super
  end
end

Main.new.read_write_file
