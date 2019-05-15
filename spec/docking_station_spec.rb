require './library/boris_bikes.rb'

describe DockingStation do
 it 'Release bike from the docking station' do
   #arrange
   docking_station = DockingStation.new
   #act
   docking_station.release_bike
   #assertion
   expect(docking_station.bike_released).to be true
 end

 it 'can dock bike at the docking station' do
   #arrange
   docking_station = DockingStation.new
   docking_station.release_bike
   #Act
   docking_station.dock_bike(docking_station.bike1)
   #assertion
   expect(docking_station.storage).to include(docking_station.bike1)
 end

 it 'can check if the bike has been docked' do
   #Arrange
   docking_station = DockingStation.new
   docking_station.release_bike
   #Act
   docking_station.dock_bike(docking_station.bike1)
   expect(docking_station.see_storage).to include(docking_station.bike1)
 end
end
