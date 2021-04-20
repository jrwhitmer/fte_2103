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

  end

end
