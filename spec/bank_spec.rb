require 'bank'

describe Bank do

  before(:each) do
    @bank = Bank.new
  end

  describe "#deposit" do
    it "increases the balance by deposited amount" do
      @bank.deposit(500)
      expect(@bank.balance).to eq 500
    end
  end

end