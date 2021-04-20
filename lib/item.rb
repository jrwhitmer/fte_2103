class Item

  attr_reader :name,
              :price

  def initialize(attributes)
    @name = attributes[:name]
    @price = attributes[:price]
  end

  def price_to_usd
    @price.slice!(0)
    price_to_usd = @price.to_f
  end

end
