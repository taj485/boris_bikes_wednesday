class DockingStation
  attr_reader :bike_released
  attr_accessor :bike1
  attr_accessor :storage

  def initialize
    @storage = []
    @bike_released = false
  end

  def dock_bike
    #in here we dock a ghost bike
    @storage.push(@bike1)
  end

  def release_bike
    if !@storage.empty? #docking station not empty
      @bike_released = true
      @bike1 = Bike.new
    else
      raise "no bikes found so nothing to be released"
    end
  end
end

class Bike
  def working?
  end
end
