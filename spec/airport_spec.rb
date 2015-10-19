require 'airport'
require 'plane'

describe Airport do

  subject { Airport.new }
  let(:plane) { Plane.new }

  describe 'initial settings' do

    it 'has a max capacity of 3 planes' do
      expect(subject.capacity).to eq 3
    end

    it 'has no landed planes when created' do
      expect(subject.landed_planes).to be_kind_of Array
      expect(subject.landed_planes[0]).to eq nil
    end

    it 'is not full when created' do
      expect(subject.airport_full?).to eq false
    end

  end

  describe 'take off' do

    it 'allows a plane to take off if weather is sunny' do
      allow(subject).to receive(:sunny?).and_return true
      expect(subject.can_take_off?).to eq true
    end

    it 'raises airport capacity by 1 when plane is taking off' do
      allow(subject).to receive(:can_land?).and_return true
      allow(subject).to receive(:can_take_off?).and_return true
      plane.land(subject)
      expect(subject.capacity).to eq 2
      plane.take_off(subject)
      expect(subject.capacity).to eq 3
    end

    it 'releases a plane' do
      subject.receive_plane(plane)
      subject.release_plane(plane)
      expect(subject.landed_planes).to eq []
    end
  end

  describe 'landing' do

    it 'allows a plane to land if weather is sunny' do
      allow(subject).to receive(:sunny?).and_return true
      expect(subject.can_land?).to eq true
    end

    it 'lower airport capacity by 1 when landing plane' do
      allow(subject).to receive(:can_land?).and_return true
      plane.land(subject)
      expect(subject.capacity).to eq 2
    end

    it 'receives a plane' do
      subject.receive_plane(plane)
      expect(subject.landed_planes).to include (plane)
    end

  end

  describe 'weather' do

    before do
      @sunny = []
      50.times do
        @sunny.push subject.sunny?
      end
    end

    it 'can be sunny' do
      expect(@sunny).to include true
    end

    it 'can be stormy' do
      expect(@sunny).to include false
    end

    it 'is sunny more than stormy' do
      sunny = @sunny.count(true)
      stormy = @sunny.count(false)
      expect(sunny).to be > stormy
    end
  end

  describe 'traffic control' do

    context 'when airport is full' do
      it 'does not allow a plane to land' do
        allow(subject).to receive(:airport_full?).and_return true
        expect(subject.can_land?).to eq false
      end
    end

    context 'when weather conditions are stormy' do
      it 'does not allow a plane to take off' do
        allow(subject).to receive(:sunny?).and_return false
        expect(subject.can_take_off?).to eq false
      end

      it 'does not allow a plane to land' do
        allow(subject).to receive(:sunny?).and_return false
        expect(subject.can_land?).to eq false
      end
    end
  end
end
