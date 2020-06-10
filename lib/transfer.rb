class Transfer
  attr_accessor :sender, :receiver, :amount, :status 
  
  def initialize(sender, receiver, amount)
    @sender = sender 
    @receiver = receiver
    @amount = amount 
    @status = "pending" 
  end 
  
  def valid?
    if sender.valid? == true && receiver.valid? == true
      true
    else 
      false
    end
  end 
  
  def execute_transaction(amount)
    if self.valid? && sender.balance > 0 
      @status = "complete"
      receiver.balance += amount 
      sender.balance -= amount 
    else
      false
    end
  end 
end
