
class CashRegister 
  
  attr_accessor :discount, :items, :price, :quantity, :total
  
  
  def initialize(discount = 0)
    @total = 0 
    @discount = discount
    @items = []
  end
  
  def total
    @total
  end
  
  def add_item(title, price, quantity = 1)
    counter = 0
    @total = price * quantity
    while counter < quantity
     @items << title
    counter += 1
  end
  end
  
  def apply_discount
    if @discount > 0 
      @total -= @total*discount/100
      return "After the discount, the total comes to $#{@total}."
     else
       return "There is no discount to apply."
     end
  end
  
  def items 
    @items
  end

def void_last_transaction
  @total = 0
end
  
  
  
end