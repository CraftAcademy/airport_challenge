class Controller
  def initialize
    @weather = 'sunny'
  end
  def allowed
    if @weather == 'sunny'
      true
    else
      return 'You are not allowed to take off'
    end
end
end