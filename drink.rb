class Drink

  attr_reader :drink_name, :drink_price, :alc_level

  def initialize(drink_name, drink_price, alc_level)
    @drink_name = drink_name
    @drink_price = drink_price
    @alc_level = alc_level
  end

end
