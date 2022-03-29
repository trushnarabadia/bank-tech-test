class BankAccount

  attr_accessor :balance

  def initialize(balance = 0)
    @balance = balance
  end

  def deposit(amount)
    @balance += amount 
  end

  def withdraw(amount)
    @balance -= amount
  end

  def deposit_info(amount)
    info = {
      date: Time.now.strftime('%d/%m/%Y'),
      amount: amount, 
      balance: @balance
    }
  end
end
