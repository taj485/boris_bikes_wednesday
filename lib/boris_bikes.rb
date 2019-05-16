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
    if @storage.empty?
      @storage.push(@bike1)
    else
      raise "Docking station is full"
    end
  end

  def release_bike
    unless @storage.empty? #docking station is not empty
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
