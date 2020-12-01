require 'account'

describe Account do

  before(:each) do
    @account = Account.new
  end

  describe "#deposit" do

    it "increases the balance by deposited amount" do
      @account.deposit(500)
      expect(@account.balance).to eq 500
    end

    it "adds a deposit transaction statement to list of transactions" do
      @account.deposit(500)
      date_today = Time.new.strftime("%d/%m/%Y")
      expect(@account.transaction.list.first).to eq("#{date_today} || 500 || || 500")
    end
  end

  describe "#withdraw" do

    it "decreases the balance by withdrawn amount" do
      @account.withdraw(500)
      expect(@account.balance).to eq -500
    end

    it "adds a withdrawal transaction statement to list of transactions" do
      @account.withdraw(500)
      date_today = Time.new.strftime("%d/%m/%Y")
      expect(@account.transaction.list.first).to eq("#{date_today} || || 500 || -500")
    end
  end

  describe "#statement" do
  
    it "prints a statement of users transaction history" do
      @account.deposit(2000)
      @account.withdraw(500)
      @account.deposit(1000)
      date_today = Time.new.strftime("%d/%m/%Y")
      expect(@account.statement).to eq ["date || credit || debit || balance", "01/12/2020 || 1000 || || 2500", "01/12/2020 || || 500 || 1500", "01/12/2020 || 2000 || || 2000"]
     
    end
  end
end