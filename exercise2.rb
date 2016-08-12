class Item
end
@@tax = 0
  def initialize(cat, q, type, price)
    @q = q
    @type = type
    @price = price
    @cat = cat
  end

  def sales_tax
    @@tax = 0
    if @cat (== "books" || "medicine" || "food") && @type
      @@tax = @price * 0.05
    elsif @cat (!== "books" || "medicine" || "food" && !@type
      @@tax = @@price * 0.10
    elsif @cat (!== "books" || "medicine" || "food" && @type
      @@tax = @price* 0.15
    else
      @@tax = 0
    end

class Receipt
end
