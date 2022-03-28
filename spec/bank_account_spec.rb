require_relative '../lib/bank_account'

describe BankAccount do 
  describe '#deposit' do
    it 'should respond to a deposit' do 
      bank_account = BankAccount.new
      expect(bank_account).to respond_to(:deposit)
    end
  end
end