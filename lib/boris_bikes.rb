class DockingStation
  attr_reader :bike_released
  attr_accessor :storage
  attr_reader :capacity
DEFAULT_CAPACITY = 20

  def initialize(capacity = DEFAULT_CAPACITY)
    @storage = []
    @bike_released = false
    @capacity = capacity
  end

  def dock_bike(bike)
    #in here we dock a ghost bike
    unless full?
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

  private

  def full?
     @storage.length >= @capacity
  end
end

class Bike
  def working?
  end
end
