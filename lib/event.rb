class Event

  attr_reader :name,
              :food_trucks

  def initialize(name)
    @name = name
    @food_trucks = []
  end

  def add_food_truck(food_truck)
    @food_trucks << food_truck
  end

  def food_truck_names
    @food_trucks.map do |food_truck|
      food_truck.name
    end.uniq!
  end

  def food_trucks_that_sell(item)
    @food_trucks.find_all do |food_truck|
      food_truck.inventory.keys.include?(item)
    end.uniq!
  end

  # def total_inventory
  #   item_array = @food_trucks.map do |food_truck|
  #       food_truck.inventory.keys
  #     end.uniq!
  #   food_truck_quantity_hash = {}
  #   total_inventory = {}
  #   @food_trucks.each do |food_truck|
  #     item_array.each do |item|
  #       food_truck_quantity_hash[:quantity] = food_truck.inventory[item]
  #       food_truck_quantity_hash[:food_trucks] = food_truck
  #       total_inventory[item] = food_truck_quantity_hash
  #     end
  #   end
  #   total_inventory
  # end

  def sorted_item_list
    item_names = @food_trucks.flat_map do |food_truck|
      food_truck.inventory.keys.map do |item|
        item.name
      end
    end.uniq!

    item_names.sort_by do |item_name|
      item_name.downcase
    end
  end

  def overstocked_items
    
  end

end
