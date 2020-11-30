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
    it "adds a deposit transaction statement to list of transactions" do
      @bank.deposit(500)
      date_today = Time.new.strftime("%d/%m/%Y")
      expect(@bank.transaction.list.first).to eq("#{date_today} || 500 || || 500")
    end
  end

  describe "#withdraw" do

    it "decreases the balance by withdrawn amount" do
      @bank.withdraw(500)
      expect(@bank.balance).to eq -500
    end

    it "adds a withdrawal transaction statement to list of transactions" do
      @bank.withdraw(500)
      date_today = Time.new.strftime("%d/%m/%Y")
      expect(@bank.transaction.list.first).to eq("#{date_today} || || 500 || -500")
    end

  end
end