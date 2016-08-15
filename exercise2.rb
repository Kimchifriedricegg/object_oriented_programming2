class Item

@@items = []
@@tax = 0
  def initialize(q, type, price, cat)
    @q = q
    @type = type
    @price = price
    @cat = cat
  end

  def sales_tax
    @@tax = 0
    if @cat == ("books" || @cat == "medicine" || @cat == "food") && @type
       @@tax = @price * 0.05
    elsif @cat != "books" || @cat == "medicine" || @cat == "food" && !@type
       @@tax = @@price * 0.10
    elsif @cat != "books" || @cat == "medicine" || @cat == "food" && @type
       @@tax = @price * 0.15
    else
      @@tax = 0
    end
  end

  def self.all
    @@items

    puts "#{@@items}"
end
end

book = Item.new(1, "false", 1.49, "book")
