require 'pry'

class CashRegister
  attr_accessor :total, :discount, :last_transaction
 
  
  def initialize(discount = 0)
      @total = 0   
      @discount = discount
      @items = {:item_name => []}
  end
  
  def total
    self.total = @total
  end
  
  def add_item(title, price, quantity = 1) 
    self.total  = @total + (price * quantity)
    # if quantity > 1 
      # quantity.times do 
      # @items[item_name] << title
    # end
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
    @items[item_name]
  end
  
end 
