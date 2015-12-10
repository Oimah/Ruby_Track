require_relative "../lib/name.rb"

class Main

  def get_name
   begin
    
	   puts "Enter Firstname"
     @Firstname =  gets.chomp.to_s
     puts "Enter Lastname"
     @Lastname = gets.chomp.to_s
     check_name(@Firstname, @Lastname) 
     name = Name.new(@Firstname, @Lastname)
     puts "#{name._firstname} #{name._lastname}"
   rescue InvalidNameError
      puts "firstname or lastname is empty"
   end
  end

  def check_name(firstname, lastname)
    raise InvalidNameError unless (firstname.length > 0 && lastname.length > 0 )
  end
end


class InvalidNameError < StandardError
  def initialize(msg="That is an invalid name" )
    super
  end
end

#raise MyError

Main.new.get_name
