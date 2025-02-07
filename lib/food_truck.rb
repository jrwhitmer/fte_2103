class FoodTruck

  attr_reader :name,
              :inventory
  def initialize(name)
    @name = name
    @inventory = {}
  end

  def check_stock(item)
    if @inventory[item].nil?
      0
    else
      @inventory[item]
    end
  end

  def stock(item, quantity)
    if !@inventory[item].nil?
      @inventory[item] += quantity
    else
      @inventory[item] = quantity
    end
  end

  def potential_revenue
    potential_revenue_per_item = @inventory.map do |item, quantity|
      item.price_to_usd * quantity.to_f
    end
    potential_revenue_per_item.sum
  end
end
