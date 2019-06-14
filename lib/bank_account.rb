class BankAccount
  attr_reader :name
  attr_accessor :balance, :status

  def initialize(name)
    @name = name
    @balance = 1000
    @status = "open"
  end

  def deposit(amount)
    self.balance += amount
  end

  def method_name
    self.balance
  end

  def valid?
    if self.balance > 0 && slef.status == "open"
      return true
    else
      return false
    end
  end

  def close_account
    self.status = "closed"
  end
end
