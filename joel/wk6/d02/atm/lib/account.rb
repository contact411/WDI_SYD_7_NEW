class Account
  def initialize
    @ammount = 0
  end
  
  def deposit(ammount)
    @ammount += ammount
  end

  def balance
    @ammount
  end
end