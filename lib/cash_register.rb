require 'pry'

class CashRegister

  attr_accessor :total, :discount

  def initialize(discount=0)
    @total = 0
    @discount = discount.to_f
    @items = [] # intializes an empty cart
  end

  def add_item(title, price, quantity=1)
    @total = @total + (quantity*price)

    quantity.times do |quantity|
      @items << title
    end
  end # end add_item

  def apply_discount
    discount == 0 ? "There is no discount to apply." : (@total = (@total*((100-@discount)/100))
      "After the discount, the total comes to $#{@total.to_i}.")
  end # end apply discount

  def items
    @items
  end 
end # end class

#=>0 + 2 x $5 = 10
#=> ((100-20)/100)*2x$5)