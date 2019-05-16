require 'boris_bikes.rb'

describe Bike do
  it 'shows there is an instance of Bike' do
    #Arrange
    docking_station = DockingStation.new
    #Act
    docking_station.dock_bike(Bike.new)
    #Assert
    expect(docking_station.storage[0]).to be_a_kind_of(Bike)
  end

  it 'bike can respond to the method working?' do
    #Arrange
    bike1 = Bike.new
    #act
    expect(bike1).to respond_to(:working?)
  end
end
