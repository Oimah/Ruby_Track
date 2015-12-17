require_relative "../lib/name.rb"
    
  puts "Enter Firstname and Lastname" 
  name = Name.new(gets.chomp.to_s, gets.chomp.to_s)
  puts "#{name._firstname} #{name._lastname}"
  


