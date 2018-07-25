class Customer

  attr_reader :customer_name, :wallet, :age, :drunk_level

  def initialize(customer_name, wallet, age)
    @customer_name = customer_name
    @wallet = wallet
    @drinks = []
    @age = age
    @drunk_level = 0
  end

  def drink_count()
    @drinks.count()
  end

  def buy_drink(order, pub, person)
    drink = pub.sell_drink(order, person)
    if drink != nil
      @drinks.push(drink)
    end
  end

  def pay_pub(drink, pub)
    @wallet -= drink.drink_price
    pub.till_increase(drink)
  end


end
