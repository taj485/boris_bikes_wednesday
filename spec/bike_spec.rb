require './library/boris_bikes.rb'

describe Bike do
  it 'shows there is an instance of Bike' do
    #Arrange
    docking_station = DockingStation.new
    #Act
    docking_station.release_bike
    #Assert
    expect(bike1).to be_a_kind_of(Bike)
  end
end
