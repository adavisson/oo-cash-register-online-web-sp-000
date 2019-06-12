require 'pry'

class CashRegister
  
  attr_accessor :discount, :total
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
  end
  
  def add_item(title, price, quantity = 1)
    @total += price * quantity
  end
  
  def apply_discount
    total = @total.to_f * ((100.0 - @discount.to_f) / 100.0)
    total
    binding.pry
  end
  
end
