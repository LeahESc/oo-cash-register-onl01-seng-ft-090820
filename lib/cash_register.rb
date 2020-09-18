require 'pry'

class CashRegister
  attr_accessor :total, :discount, :last_transaction
 
  
  def initialize(discount = 0)
      @total = 0   
      @discount = discount
      @items = {:title => []}
  end
  
  def total
    self.total = @total
  end
  
  def add_item(title, price, quantity = 1) 
    self.total  = @total + (price * quantity)
    # quantity = x 
    # if x > 1 
  #     x.times do 
  #     @items[title] << title
  #   end
  #   elsif x = 1 
  #     @items[title] << title 
  #   # end
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
    @items[title]
  end
  
end 
