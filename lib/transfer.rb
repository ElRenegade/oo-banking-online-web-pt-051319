class Transfer
  attr_accessor :sender, :receiver, :status, :amount

  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @status = "pending"
    @amount = amount
  end

  def valid?
    sender.valid?
    receiver.valid?
  end

  def execute_transaction
    if sender.balance < amount
      self.status = "rejected"
      "Transaction rejected. Please check your account balance."
    elsif self.status == "complete"
      "Can olny complete transaction once"
    else
      sender.balance -= amount
      receiver.deposit(amount)
      self.status = "complete"
  end
end

def reverse_transfer
  if self.status == "completed"
    receiver.balance -= amount
    sender.deposit(amount)
    self.status = "reveresed"
  elsif self. status == "reveresed"
    "trasnfer has already been reveresed."
  end
end

end
