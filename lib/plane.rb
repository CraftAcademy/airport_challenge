class Plane
  def initialize
    @flying = true
  end
  def flying?
    if @flying == true
      true
    else
      false
    end

  end
  def land
    @flying = false
  end
  def landed?
    if @flying == false
      true
    else
      false
    end

  end

end



