class CustomerAccountDetail
  attr_accessor :name, :account_no, :balance
 
  def initialize(name) 
  	@name = name
    number_initializer = number_initializer.to_i + 1
    @account_no = "0000000#{number_initializer}"
    @balance = 1000
    action_to_perform(self)
  end

  def deposit
    puts "Deposit Amount"    
    @balance += gets.to_i
    puts "balance : #{@balance}"
    continue_or_not_continue(self)
  end

  def withdraw
    puts "Withdrawal Amount"
    amount = gets.to_i
    if(@balance >= amount)
      @balance -= amount 
      puts "Transaction successful"
      puts "balance : #{@balance}"
    else
      puts "Insuficient fund"
    end
    continue_or_not_continue(self)
  end

  def continue_or_not_continue(object_instance)
    puts "Do you want to continue Y/N"
    continue_or_not = gets.chomp
    continue_or_not.downcase == "y" ? action_to_perform(object_instance): return
  end

  def action_to_perform(object_instance)
    puts "Enter D/d for deposit or W/w to withdraw"
    if(gets.chomp.downcase == "d" ) 
      deposit
      else 
      withdraw
    end
  end
end