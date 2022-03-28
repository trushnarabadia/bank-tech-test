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

  end
end