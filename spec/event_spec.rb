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
  end

end
