require 'airport'

class Plane

  attr_accessor :flying, :landed

  def initialize
    @flying = true
    @landed = false
  end

  def is_flying?
    @flying ? true : false
  end

  def has_landed?
    @landed ? true : false
  end

  def on_ground?

  end

end
