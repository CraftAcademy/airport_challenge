require 'airport'
require 'Plane'
require 'Air_traffic_controller.rb'

## Note these are just some guidelines!
## Feel free to write more tests!!

# A plane currently in the airport can be requested to take off.
#
# No more planes can be added to the airport, if it's full.
# It is up to you how many planes can land in the airport
# and how that is implemented.
#
# If the airport is full then no planes can land

describe Airport do

  describe 'take off' do
    it 'instructs a plane to take off' do

      controller=Controller.new
      expect(controller.allowed).to eq true


    end

    it 'releases a plane' do

    end
  end

  describe 'landing' do
    it 'instructs a plane to land' do

    end

    it 'receives a plane' do

    end
  end

  describe 'traffic control' do
    context 'is airport full?' do
      it 'allow planes to land if it is not full'do


      end
    end

    # Include a weather condition.
    # The weather must be random and only have two states "sunny" or "stormy".
    # Try and take off a plane, but if the weather is stormy,
    # the plane can not take off and must remain in the airport.
    #
    # This will require stubbing to stop the random return of the weather.
    # If the airport has a weather condition of stormy,
    # the plane can not land, and must not be in the airport

    context 'when weather conditions are stormy' do
      it 'does not allow a plane to take off' do

      end

      it 'does not allow a plane to land' do

      end
    end
  end
end
