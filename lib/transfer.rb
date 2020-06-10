class Transfer
  attr_accessor :sender, :receiver, :amount 
  
  def initialize(sender, receiver, amount)
    @sender = sender 
    @receiver = receiver
    @amount = amount 
    @status = "pending" 
  end 
  
  def valid?
    if sender.Bank_account.valid? == true && receiver.valid? == true
      true
    else 
      false
    end
  end 
end
