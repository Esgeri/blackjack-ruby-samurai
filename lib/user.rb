class User
  attr_reader :balance

  def initialize
    @balance = 100
  end

  def increase_balance
    @balance += 100
  end

  def decrease_balance
    @balance -= 10
  end
end
