require './lib/docking_station'

describe DockingStation do
  it { should respond_to(:release_bike) }

  it "responds to working method and returns true" do
    docking_station = DockingStation.new
    docking_station.dock(Bike.new)
    expect(docking_station.release_bike.working?).to be true
  end

  it { should respond_to(:dock).with(1).argument }

  it "shows the user a bike that has been docked" do
    docking_station = DockingStation.new
    new_bike = Bike.new
    docking_station.dock(new_bike)
    expect(docking_station.bikes).to eq [new_bike]
  end

  it "raises an error when user tries to release bike when no bike docked" do
    docking_station = DockingStation.new
    expect { docking_station.release_bike }.to raise_error 'There is no bike available'
  end

  it "raises an error when user tries to dock a bike when the docking station is already full" do
    docking_station = DockingStation.new
    expect {(DockingStation::DEFAULT_CAPACITY + 1).times { docking_station.dock(Bike.new) }}.to raise_error 'Docking station is full'
  end

  it "allows user to specify a capacity" do
    capacity = 15
    docking_station = DockingStation.new(capacity)
    expect(docking_station.capacity).to eq capacity
  end

  it "defaults to 20 capacity" do
    docking_station = DockingStation.new
    expect(docking_station.capacity).to eq 20
  end

  it "raises an error when trying to release a broken bike" do
    docking_station = DockingStation.new
    broken_bike = Bike.new(false)
    docking_station.dock(broken_bike)
    expect{ docking_station.release_bike }.to raise_error "Can't release broken bike"
  end

end



=begin

test redundant after chapter 13

it "responds to working method" do
  docking_station = DockingStation.new
  expect(docking_station.release_bike).to respond_to(:working?)
end

it "makes an instance of the DockingStation class" do
  docking_station = DockingStation.new
  expect(docking_station).to be_instance_of(DockingStation)
end

  it "has instances which respond to the method release_bike" do
    docking_station = DockingStation.new
    expect(docking_station).to respond_to(:release_bike)
end
=end
