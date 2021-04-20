require './lib/item'
require './lib/food_truck'
require './lib/event'
require 'rspec'

RSpec.describe Event do

  context 'instantiation' do
    event = Event.new("South Pearl Street Farmers Market")

    it 'exists' do
      expect(event).to be_instance_of(Event)
    end

    it 'can return its name' do
      expect(event.name).to eq("South Pearl Street Farmers Market")
    end

    it 'has no food trucks by default' do
      expect(event.food_trucks).to eq([])
    end
  end

end
