class DockingStation
  attr_reader :bike_released
  attr_accessor :bike1

  def initialize
    @bike_released = false
  end

  def release_bike
    @bike_released  = true
    @bike1 = Bike.new
  end
end

class Bike
  def working?
  end
end
docking_station = DockingStation.new
docking_station.release_bike
newbike = Bike.new
newbike.working?
