
class DockingStation
  attr_reader :bike_released
  attr_reader :bike1

  def initialize
    @bike_released = false
  end

  def release_bike
    @bike_released  = true
    $bike1 = Bike.new
  end
end

class Bike
end
