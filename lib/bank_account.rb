require_relative 'statement'

class BankAccount
include Statement
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
      type: :deposit,
      amount: amount, 
      balance: @balance
    }
  end

  def withdrawal_info(amount)
    info = {
      date: Time.now.strftime('%d/%m/%Y'),
      type: :withdraw,
      amount: amount, 
      balance: @balance
    }
  end

  def print_statement()
    print_top_line
  end
end