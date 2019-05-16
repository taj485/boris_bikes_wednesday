require "boris_bikes.rb"

describe DockingStation do
  let(:docking_station) {
    #arrange
    DockingStation.new
  }
  it "Can release bike from the docking station" do
    #arrange
    docking_station.dock_bike(Bike.new)
    #Act/assertion
    expect(docking_station.release_bike).to be_a_kind_of(Bike)
  end

  it "can dock bike at the docking station" do
    #Act
    bike = Bike.new
    docking_station.dock_bike(bike)
    #assertion
    expect(docking_station.storage).to include(bike)
  end

  it "can check storage" do
    #assertion
    expect(docking_station).to respond_to(:storage)
  end

  it "does not release bike when there are none available" do
    #Act

    #assertion
    expect { docking_station.release_bike }.to raise_error
  end

  it 'can only hold 20 bike' do
    #Act
    20.times { docking_station.dock_bike Bike.new }
    #assertion
    expect { docking_station.dock_bike }.to raise_error
  end
end
