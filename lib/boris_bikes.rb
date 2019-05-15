class DockingStation
  attr_reader :bike_released
  attr_accessor :bike1
  attr_accessor :storage

  def initialize
    @storage = []
    @bike_released = false
  end

  def dock_bike
  @storage.push(@bike1)
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
