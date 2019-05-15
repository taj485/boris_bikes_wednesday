class DockingStation
  attr_reader :bike_released
  attr_accessor :bike1
  attr_accessor :storage

  def initialize
    @storage = []
    @bike_released = false
  end

  def dock_bike(bike)
  @storage.push(bike)
  end

  def release_bike
    @bike_released  = true
    @bike1 = Bike.new
  end

  def see_storage
    @storage
  end
end

class Bike
  def working?
  end
end

docking_station = DockingStation.new
docking_station.release_bike
docking_station.dock_bike(docking_station.bike1)
docking_station.see_storage
