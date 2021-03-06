require 'pry'

class CashRegister
  attr_accessor :total, :discount, :last_transaction
 
  
  def initialize(discount = 0)
      @total = 0   
      @discount = discount
       @items = []
  end
  
  def total
    self.total = @total
  end
  
  def add_item(title, price, quantity = 1) 
      @last_transaction = price * quantity
    self.total  = @total + (price * quantity)
      quantity.times do 
      @items << title
    end
  end
  
  def apply_discount
    if @discount <= 0
      return "There is no discount to apply."
    elsif @discount > 0
    discount_amount = self.total * @discount.to_f / 100
    # binding.pry
    self.total = self.total - discount_amount
    return "After the discount, the total comes to $#{self.total.round()}."
    end
  end 
  
  def items
    @items
  end

  def void_last_transaction
    self.total = self.total - @last_transaction
    self.total
  end
end 
