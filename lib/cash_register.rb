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
    if @discount > 0
      @total * ((100 - @discount) / 100)
    else
      @total
    end
  end
  
end
