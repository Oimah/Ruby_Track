require_relative "../lib/customer.rb"

class Main
  def  initialize
  	puts "Customer name"
  	name = gets.to_s.chomp
  	customer = Customer.new(name)
    action_to_perform(customer)
  end
  			
  def deposit(customer)
    puts "Deposit Amount"		
    puts customer.deposit(gets.to_i) 
    continue_or_not_continue(customer)
  end
  def withdraw(customer)	
    puts "Withdrawal Amount"
    puts  customer.withdraw(gets.to_i)
    continue_or_not_continue(customer)
  end

  def continue_or_not_continue(object_instance)
    puts "Do you want to continue Y/N"
    continue_or_not = gets.to_s.chomp
    continue_or_not.downcase == "y" ? action_to_perform(object_instance): return
  end

  def action_to_perform(object_instance)
  	puts "Enter D/d for deposit or W/w to withdraw"
  	key = gets.to_s.chomp
  	if(key.downcase == "d" ) 
  	  deposit(object_instance)
      else 
  	  withdraw(object_instance)	
  	end
  end
end

Main.new