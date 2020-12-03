
class CashRegister

    attr_accessor :total, :discount, :array, :last_item_price

    def initialize(discount = 0)
        @total = 0
        @discount = discount
        @array = []
    end

    def add_item(name, price, quantity = 1)
        self.total += price * quantity
        cost = price * quantity
        self.last_item_price = cost
        quantity.times do 
            self.array.push(name)
        end
    end

    def apply_discount
        if self.discount == 0
            return ("There is no discount to apply.")
        else
            to_percentage = self.discount / 100.0
            discount_amount = self.total * to_percentage
            total = self.total = self.total - discount_amount
            return ("After the discount, the total comes to $#{total.to_i}.")
            
        end
    end

    def items
        return self.array
    end
    
    def void_last_transaction
        self.total = self.total - self.last_item_price
    end

end