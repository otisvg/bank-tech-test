class Bank
  attr_reader :balance, :deposit

  def initialize
    @balance = 0
  end

  def deposit(amount)
    @balance += amount
  end

end