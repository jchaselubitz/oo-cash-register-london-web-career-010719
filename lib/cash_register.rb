require "pry"

class CashRegister
  def initialize(discount=nil)
    @total = 0
    @discount = discount
    @items = []
  end

  attr_accessor :discount
  attr_accessor :total
  attr_accessor :title
  attr_accessor :items


  def add_item(title,price,quantity=nil)
    @title = title
    @price = price
    unless quantity == nil
      total_updater = price * quantity
      @quantity = quantity
      @total += total_updater
     else
       @total += price
       @items << title
     end
  end

  def apply_discount
    if @discount != nil
      @total = @total - (@total*@discount/100)
      "After the discount, the total comes to $#{@total}."
    else
      "There is no discount to apply."
    end
  end


  def items
    i = 0
    while i < @quantity do
      @items << @title
      i = i + 1
    end
  @items

  end

  def void_last_transaction
    @total = @total - @price
  end

end
