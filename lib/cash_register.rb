

class CashRegister

    attr_accessor :discount, :cash_register_total, :cash_register_with_discount, :item

    def initialize(discount = 0)
        @discount = discount
        @cash_register_total = 0
        @cash_register_with_discount = 0
        @item = []
    end


    def total
        self.cash_register_total
    end

    def add_item(item, price, quantity = 1)
        @cash_register_total = self.cash_register_total + ( price * quantity )
        self.item << item * quantity
    end

    def apply_discount
        self.cash_register_with_discount = self.total * (self.discount / 100)
        "After the discount the total comes to #{self.cash_register_with_discount}"
    end

end 

cart = CashRegister.new(20)
puts cart.discount
puts cart.total
cart.add_item("apple", 5, 3)
puts cart.total
puts cart.item
