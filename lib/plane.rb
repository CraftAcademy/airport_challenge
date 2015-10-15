require_relative 'airport'

class Plane

  DEFAULT_STATUS = "flying"

  attr_accessor :status

  def initialize
    self.status = DEFAULT_STATUS
  end

  def land(airport)
    if airport.land? && self.landed?
      self.status = "landed"
    else
      raise "You are not allowed to land!"
    end
  end

  def landed?
    if self.status == "landed"
      true
    end
  end

  def take_off(airport)
    if airport.take_off? && self.took_off?
      self.status = DEFAULT_STATUS #"flying"
    else
      raise "You are not allowed to take off!"
    end
  end

  # def take_off
  #   self.status = "flying"
  # end
  #
  # def land
  #   self.status = "landed"
  # end

  def took_off?
    if self.status == "flying"
      true
    end
  end
end


