require_relative '../lib/bank_account'

describe BankAccount do 

  before(:each) do
    @bank_account = BankAccount.new
    @date = Time.now.strftime('%d/%m/%Y')
  end

  describe '#deposit' do
    it 'should respond to a deposit' do 
      expect(@bank_account).to respond_to(:deposit)
    end

    it 'should increase the balance of an account when a deposit is made' do 
      @bank_account.deposit(100)
      expect(@bank_account.balance).to eq (100)
    end

    it 'should record the details of the deposit transaction' do 
      @bank_account.deposit(15)
      info = { date: @date, type: :deposit, amount: 15, balance: 15 } 
      expect(@bank_account.deposit_info(15)).to include (info)
    end

  end

  describe '#withdraw' do 
    it 'should respond to withdraw' do 
      @bank_account.deposit(75)
      expect(@bank_account).to respond_to(:withdraw)
    end

    it 'should reduce the balance of an account when a withdrawal is made' do 
      @bank_account.deposit(75)
      @bank_account.withdraw(35)
      expect(@bank_account.balance).to eq (40)
    end

    it 'should record the details of the withdrawal transaction' do 
      @bank_account.deposit(90)
      @bank_account.withdraw(20)
      info = { date: @date, type: :withdraw, amount: 20, balance: 70 } 
      expect(@bank_account.withdrawal_info(20)).to include (info)
    end

  end

  describe '#print_transactions' do
  
    it 'should have a top line of info above transactions' do
      expect{ @bank_account.print_statement }.to output("date || credit || debit || balance").to_stdout
    end

    # it 'should include the amount of a deposit transaction, type and balance after' do
    #   transactions = @bank_account.deposit(50)
    #   expect{ @bank_account.print_statement(transactions) }.to output(
    #     "date || credit || debit || balance\n"\
    #     "#{@date} || 50 || || 50").to_stdout
    # end
  end
end
