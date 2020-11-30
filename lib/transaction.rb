class Transaction
  attr_reader :date, :list
  def initialize
    @list = []
  end

  def date
    Time.new.strftime("%d/%m/%Y")
  end
end