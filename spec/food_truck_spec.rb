require './lib/food_truck'
require './lib/item'
require 'rspec'

RSpec.describe FoodTruck do

  context 'instantiation' do
    item1 = Item.new({name: 'Peach Pie (Slice)', price: "$3.75"})
    item2 = Item.new({name: 'Apple Pie (Slice)', price: '$2.50'})
    food_truck = FoodTruck.new("Rocky Mountain Pies")

    it 'exists' do
      expect(food_truck).to be_instance_of(FoodTruck)
    end

    it 'can return its name' do
      expect(food_truck.name).to eq("Rocky Mountain Pies")
    end

    it 'starts with an empty inventory' do
      expect(food_truck.inventory).to eq({})
    end
  end

  context 'methods' do
    item1 = Item.new({name: 'Peach Pie (Slice)', price: "$3.75"})
    item2 = Item.new({name: 'Apple Pie (Slice)', price: '$2.50'})
    food_truck = FoodTruck.new("Rocky Mountain Pies")

    it 'can check stock of an item' do
      expect(food_truck.check_stock(item1)).to eq(0)
    end
  end

end
