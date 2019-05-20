require 'bike'

class DockingStation
  attr_accessor :storage
  attr_reader :capacity
  DEFAULT_CAPACITY = 20
  attr_accessor :broken_bike_storage

  def initialize(capacity = DEFAULT_CAPACITY)
    @storage = []
    @bike_released = false
    @capacity = capacity
  end

  def dock_bike(bike)
    if bike == "broken"
      @storage.push(bike)
    else
      unless full?
        @storage.push(bike) # will run if it is false
      else
        raise "Docking station is full" # will run if it is true
      end
    end
  end

  def release_bike(bike)
    if bike == "broken"
      raise "Can not release broken bike!"
    else
      unless @storage.empty? #docking station is not empty
        @storage.pop
      else
        raise "no bikes found so nothing to be released"
      end
    end
  end

  private

  def full?
     @storage.length >= @capacity
  end
end
