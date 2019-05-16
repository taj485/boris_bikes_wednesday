class DockingStation
  attr_reader :bike_released
  attr_accessor :storage

  def initialize
    @storage = []
    @bike_released = false
  end

  def dock_bike(bike)
    #in here we dock a ghost bike
    if @storage.length <= 20
      @storage.push(bike)
    else
      raise "Docking station is full"
    end
  end

  def release_bike
    unless @storage.empty? #docking station is not empty
      @storage.pop
    else
      raise "no bikes found so nothing to be released"
    end
  end
end

class Bike
  def working?
  end
end
