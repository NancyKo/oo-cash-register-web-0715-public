# Write your code here.
require 'pry'
class CashRegister

  attr_accessor :total, :discount

  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items = []
  end

  def discount
    @discount = @discount
  end

  def add_item(item, price, quantity=1)
    quantity.times do
      @items << item
      @total = @total + price 
    end  
  end
   
  def apply_discount
    if @discount > 0
      @discount = (@total * (@discount/100.to_f))
      @total = @total - @discount
      return "After the discount, the total comes to $#{@total.to_i}."
    else
      return "There is no discount to apply."
    end
  end

  def items
    @items
  end

end