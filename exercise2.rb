class Item
  @@tax  = 0

  def initialize(type, price, cat)
    @type     = type
    @price    = price
    @cat      = cat
  end

  def sales_tax
    if (@cat == "books" || @cat == "medicine" || @cat == "food") && @type
      @@tax = @price * 0.05
    elsif (@cat != "books" && @cat != "medicine" && @cat != "food") && !@type
      @@tax = @price * 0.10
    elsif (@cat != "books" && @cat != "medicine" && @cat != "food") && @type
      @@tax = @price * 0.15
    else
      @@tax = 0
    end
  end

  def total
    self.sales_tax
    (@price+@@tax).round(2)
  end
end

class Receipt


  @@cart_items = []

  def add(item, quantity)
    @@cart_items.push({ item: item, quantity: quantity});
  end

  def total
    total = 0
    for cart_item in @@cart_items

      total+= cart_item[:item].total * cart_item[:quantity]
    end
    total.round(2)
  end
end


item1 = Item.new(false, 1.49, "books")
item2 = Item.new(false, 2.49, "medicine")
item3 = Item.new(false, 3.49, "food")
item4 = Item.new(false, 10.00, "random")
item5 = Item.new(true, 10.00, "random")

cart = Receipt.new
cart.add(item1, 2)
cart.add(item2, 1)
cart.add(item3, 5)
cart.add(item4, 3)
cart.add(item5, 3)

puts cart.total
