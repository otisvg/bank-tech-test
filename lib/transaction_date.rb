class TransactionDate
  attr_reader :current_date

  def current_date
    Time.new.strftime("%d/%m/%Y")
  end

end