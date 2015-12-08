class Customer
  attr_accessor :name, :account_no, :balance
 
  def initialize(name)
    
  	@name = name
    number_initializer = number_initializer.to_i + 1
    @account_no = "0000000#{number_initializer}"
    @balance = 1000
  end

  def deposit(amount)
  @balance += amount
  end

  def withdraw(amount)
    if(@balance >= amount)
       @balance -= amount 
       "Transaction successful"
    else
      "Insuficient fund"
    end
 
  end
end