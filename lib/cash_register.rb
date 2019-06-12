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
      @total * @discount / 100
    end
  end
  
end
