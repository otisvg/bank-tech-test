class Bank
  attr_reader :balance, :deposit, :transaction

  def initialize(transaction = Transaction.new)
    @balance = 0
    @transaction = transaction
  end

  def deposit(amount)
    @balance += amount
    add_deposit_statement(amount)
  end

  def withdraw(amount)
    @balance -= amount
    add_withdraw_statement(amount)
  end

  def statement 
    @transaction.print_history
  end

  private

  def add_deposit_statement(amount)
    @transaction.list.unshift("#{transaction.date} || #{amount} || || #{balance}")
  end

  def add_withdraw_statement(amount)
    @transaction.list.unshift("#{transaction.date} || || #{amount} || #{balance}")
  end


end