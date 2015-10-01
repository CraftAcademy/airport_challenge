require 'airport'
require 'plane'

describe Airport do
  subject { Airport.new }
  let(:plane) { Plane.new }

  describe 'take off' do

    before(:each) do
      allow(subject).to receive(:take_off).return true
    end 

    it 'instructs a plane to take off' do
      expect(subject.take_off(plane)).to eq 
    end 

    xit 'releases a plane' do
      subject.release_a_plane

    end
  end 

  # describe 'landing' do

  #   xit 'instructs a plane to land' do

  #   end 

  #   xit 'receives a plane' do

  #   end 
  # end

  # describe 'traffic control' do

  #   context 'when airport is full' do

  #     xit 'does not allow a plane to land' do

  #     end 
  #   end

  #   # Include a weather condition.
  #   # The weather must be random and only have two states "sunny" or "stormy".
  #   # Try and take off a plane, but if the weather is stormy,
  #   # the plane can not take off and must remain in the airport.
  #   #
  #   # This will require stubbing to stop the random return of the weather.
  #   # If the airport has a weather condition of stormy,
  #   # the plane can not land, and must not be in the airport

  #   context 'when weather conditions are stormy' do
  #     xit 'does not allow a plane to take off' do

  #     end 


  #     xit 'does not allow a plane to land' do

  #     end 
  #   end
  # end
end