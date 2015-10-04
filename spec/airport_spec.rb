require 'airport'
require 'plane'


describe Airport do
  subject { Airport.new }
  let(:plane) { Plane.new }

  describe 'take off' do

    before(:each) do
      allow(plane).to receive("land")
      allow(plane).to receive("take_off")
    end

    it 'airport instructs a plane to take off' do
     
    end 

    xit 'releases a plane' do

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

  #   context 'when weather conditions are stormy' do
  #     xit 'does not allow a plane to take off' do

  #     end 


  #     xit 'does not allow a plane to land' do

  #     end 
  #   end
  # end
end