class Pub

  attr_reader :pub_name, :till_content

  def initialize(pub_name, till_content, drinks)
    @pub_name = pub_name
    @till_content = till_content
    @drinks = drinks
  end

  def drinks_count()
    return @drinks.count()
  end

  # #is obsolete due to .delete in return
  def sell_drink(order, person)
    return if check_age(person) == false
    return @drinks.delete(order)
  end

  # def return_drink(order)
  #   for drink in @drinks
  #     if drink == order
  #       return sell_drink(order)   #method can just be called like this
  #     end
  #   end
  # end

  def till_increase(drink)
    @till_content += drink.drink_price
  end

  def check_age(person)
    if person.age >= 18
      return true
    else
      return false
    end
  end

end
