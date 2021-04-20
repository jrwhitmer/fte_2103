require './lib/item'
require 'rspec'

RSpec.describe Item do

  context 'instantiation' do
    item1 = Item.new({name: 'Peach Pie (Slice)', price: "$3.75"})

    it 'exists' do
      expect(item1).to be_instance_of(Item)
    end

    it 'can return its name' do
      expect(item1.name).to eq('Peach Pie (Slice)')
    end

    it 'can return its price' do
      expect(item1.price).to eq("$3.75")
    end
  end

end
