require_relative 'statement'

class BankAccount
include Statement
  attr_accessor :balance, :transactions

  def initialize(balance = 0)
    @balance = balance
    @transactions = []
  end

  def deposit(amount)
    @balance += amount 
    deposit_info(amount)
  end

  def withdraw(amount)
    @balance -= amount
    withdrawal_info(amount)
  end

  def deposit_info(amount)
    info = {
      date: Time.now.strftime('%d/%m/%Y'),
      type: :deposit,
      amount: amount, 
      balance: @balance
    }
    @transactions.prepend(info)
  end

  def withdrawal_info(amount)
    info = {
      date: Time.now.strftime('%d/%m/%Y'),
      type: :withdraw,
      amount: amount, 
      balance: @balance
    }
    @transactions.prepend(info)
  end

  def statement()
    print_statement(@transactions)
  end
end