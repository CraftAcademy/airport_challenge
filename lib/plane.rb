class Plane
  attr_accessor :flying

  def initialize
    @flying = true
    @air = true
  end

  def flying?
    if @flying == true
      true
    else
      false
    end

    def take_off
      @flying = true
    end

    def status
      @flying ? "flying" : "landed"
    end

    def air
      @air = 'In the air flying'
    end
  end
end

