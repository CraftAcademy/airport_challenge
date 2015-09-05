require 'plane.rb'

class Airport

  attr_accessor :hanger

  def initialize(hanger_capacity)
    @hanger_capacity = hanger_capacity

    @hanger = Array.new()

    while @hanger.length < hanger_capacity
      @hanger << Plane.new
    end

    @hanger
  end

  def take_off

  end

  def land

  end

  def traffic_control

  end

  def weather_conditions

  end

end
