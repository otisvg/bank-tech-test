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

  describe "#statement" do
    it "prints a statement of users transaction history" do
      @bank.deposit(2000)
      @bank.withdraw(500)
      @bank.deposit(1000)
      date_today = Time.new.strftime("%d/%m/%Y")
      expect(@bank.statement).to eq ["date || credit || debit || balance", "30/11/2020 || 2000 || || 2000", "30/11/2020 || || 500 || 1500", "30/11/2020 || 1000 || || 2500"]
    end
  end
end