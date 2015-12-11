require_relative "../lib/read_and_creat_file.rb"

class Main
  def read_write_file
   begin
    ReadAndCreateFile.new.read_from_and_write_to
    puts "File writen successfully"
   rescue InvalidFileContentError
      puts "File read error"
   end
  end

  def check_file_exist
    raise InvalidFileContentError unless 1 > 0
  end
end


class InvalidFileContentError < StandardError
  def initialize(msg="File is empty" )
    super
  end
end

Main.new.read_write_file
