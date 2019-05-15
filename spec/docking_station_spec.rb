require "boris_bikes.rb"

describe DockingStation do
  let(:docking_station) {
    #arrange
    DockingStation.new
  }
  it "Release bike from the docking station" do
    #arrange
    docking_station.dock_bike
    #act
    docking_station.release_bike
    #assertion
    expect(docking_station.bike_released).to be true
  end

  it "can dock bike at the docking station" do
    #Act
    docking_station.dock_bike
    #assertion
    expect(docking_station.storage).to include(docking_station.bike1)
  end

  it "can check if the bike has been docked" do
    #Act
    docking_station.dock_bike
    expect(docking_station.storage).to include(docking_station.bike1)
  end

  it "does not release bike when there are none available" do
    #Act

    #assertion
    expect { docking_station.release_bike }.to raise_error
  end
end
