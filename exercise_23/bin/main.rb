require_relative "../lib/read_and_creat_file.rb"

class Main

  def get_file_content
   #begin
  ReadAndCreateFile.new
   #rescue InvalidFileContentError
      puts "File is empty"
  # end
  end

  def check_name
    raise InvalidFileContentError unless (firstname.length > 0 && lastname.length > 0 )
  end
end


class InvalidFileContentError < StandardError
  def initialize(msg="File is empty" )
    super
  end
end

#raise MyError

Main.new.get_file_content
