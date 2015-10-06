require 'airport'
require 'plane'


describe Airport do
  subject { Airport.new }
  let(:plane) { Plane.new }

  describe 'Airport can instruct take off' do

    before(:each) do
      allow(plane).to receive("land")
      subject.landing(plane)
      allow(plane).to receive("take_off")
    end

    it 'airport instructs a plane to take off' do
      expect(subject).to respond_to(:take_off)
    end

    it 'releases a plane' do
      expect(subject.take_off).to eq(plane)
    end
  end

  describe 'Airport can instruct a landing' do

    before(:each) do
      allow(plane).to receive(:land)
    end

    it 'airport instruct a plane to land' do
      expect(subject).to respond_to(:landing)
    end

    it 'airport receives a plane' do
      expect(subject.landing plane).to eq(plane)
    end
  end

  describe 'Airport Traffic controller' do
    context 'when airport is full' do
      before(:each) do
        allow(plane).to receive('land')
      end

      it 'traffic controller does not allow plane to land' do
        subject.capacity.times { subject.landing(plane) }
        expect { subject.landing(plane) }.to raise_error "Keep flying. The airport is full!"
      end
    end
  end
end