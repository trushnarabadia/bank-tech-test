require_relative '../lib/bank_account'

describe BankAccount do 
  describe '#deposit' do
    it 'should respond to a deposit' do 
      bank_account = BankAccount.new
      expect(bank_account).to respond_to(:deposit)
    end

    it 'should increase the balance of an account when a deposit is made' do 
      bank_account = BankAccount.new
      bank_account.deposit(100)
      expect(bank_account.balance).to eq (100)
    end

    it 'should record the details of the deposit transaction' do 
      bank_account = BankAccount.new
      bank_account.deposit(15)
      @date = Time.now.strftime('%d/%m/%Y')
      info = { date: @date, amount: 15, balance: 15 } 
      expect(bank_account.deposit_info(15)).to include (info)
    end

  end

  describe '#withdraw' do 
    it 'should respond to withdraw' do 
      bank_account = BankAccount.new
      bank_account.deposit(75)
      expect(bank_account).to respond_to(:withdraw)
    end

    it 'should reduce the balance of an account when a withdrawal is made' do 
      bank_account = BankAccount.new
      bank_account.deposit(75)
      bank_account.withdraw(35)
      expect(bank_account.balance).to eq (40)
    end
  end

  # describe '#print_transactions' do 
  #   it 'should include the amount of transaction, type and balance after' do
  #     bank_account = BankAccount.new 
  #     bank_account.deposit(50)
  #     bank_account.withdraw(20)
  #     expect(bank_account.print_transactions).to include (50)
  #     expect(bank_account.print_transactions).to include (20)
  #     expect(bank_account.print_transactions).to include (30)
  #   end
  # end
end