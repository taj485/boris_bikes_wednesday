require "boris_bikes.rb"

describe DockingStation do
  let(:docking_station) {
    #arrange
    DockingStation.new
  }

  it "Can release bike from the docking station" do
    #arrange
    bike = Bike.new
    docking_station.dock_bike(bike)
    #Act/assertion
    expect(docking_station.release_bike(bike)).to be_a_kind_of(Bike)
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

  it 'can only hold 20 bike if not specified' do
    #Act
    DockingStation::DEFAULT_CAPACITY.times { docking_station.dock_bike Bike.new }
    #assertion
    expect { docking_station.dock_bike }.to raise_error
  end

  it 'can take input and set it as capacity for storage' do
    docking_station = DockingStation.new(5)
    #assertion
    expect(docking_station.capacity).to eql(5)
  end

  it 'can hold broken bikes in broken bike storage' do
    docking_station.dock_bike(Bike.new.working?)
    expect(docking_station.storage).to include("broken")
  end

  it 'will not release broken bikes' do
    bike = Bike.new.working?
    docking_station.dock_bike(bike)
    expect { docking_station.release_bike(bike) }. to raise_error
  end
end
