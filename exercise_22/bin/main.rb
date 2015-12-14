require_relative "../lib/name.rb"
    
   puts "Enter Firstname"
   @Firstname =  gets.chomp.to_s
   puts "Enter Lastname"
   @Lastname = gets.chomp.to_s
  
   name = Name.new(@Firstname, @Lastname)
   puts "#{name._firstname} #{name._lastname}"
  


