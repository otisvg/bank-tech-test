require 'transaction_date'

describe Date do

  describe "#current_date" do
    it "gets the current date" do
      transaction_date = TransactionDate.new
      date_today = Time.new.strftime("%d/%m/%Y")
      expect(date.current_date). to eq date_today
    end
  end
end