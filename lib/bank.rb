class Bank
  attr_reader :balance, :deposit, :transaction

  def initialize(transaction = Transaction.new)
    @balance = 0
    @transaction = transaction
  end

  def deposit(amount)
    @balance += amount
    @transaction.list << "#{@transaction.date} || #{amount} || || #{balance}"
  end

end