require 'transaction'

describe Date do

  describe "#current_date" do
    it "gets the current date" do
      transaction = Transaction.new
      date_today = Time.new.strftime("%d/%m/%Y")
      expect(transaction.date). to eq date_today
    end
  end
end