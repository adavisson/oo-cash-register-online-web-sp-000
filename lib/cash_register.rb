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
    total = @total
    if @discount > 0
      total = @total * ((100 - @discount) / 100)
    end
    total
  end
  
end
