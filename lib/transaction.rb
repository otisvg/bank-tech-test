class Transaction
  attr_reader :date, :list, :print_history
  def initialize
    @list = []
  end

  def date
    Time.new.strftime("%d/%m/%Y")
  end

  def print_history
    @list.unshift("date || credit || debit || balance")
    @list.each do |transaction|
      p transaction 
    end
  end
end