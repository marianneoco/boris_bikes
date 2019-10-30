require './lib/docking_station'

describe DockingStation do
  it { should respond_to(:release_bike) }

  it "responds to working method" do
    docking_station = DockingStation.new
    expect(docking_station.release_bike).to respond_to(:working?)
  end

  it "responds to working method and returns true" do
    docking_station = DockingStation.new
    expect(docking_station.release_bike.working?).to be true
  end

  it { should respond_to(:dock).with(1).argument }

  it "shows the user a bike that has been docked" do
    docking_station = DockingStation.new
    new_bike = Bike.new
    docking_station.dock(new_bike)
    expect(docking_station.bike).to eq new_bike
  end

  it "raises an error when user tries to release bike when no bike docked" do
    docking_station = DockingStation.new
    expect { docking_station.release_bike }.to raise_error(RuntimeError)
  end

  it "raises an error when user tries to dock a bike when the docking station is already full" do
    docking_station = DockingStation.new
    bike_1 = Bike.new
    docking_station.dock(bike_1)
    bike_2 = Bike.new
    expect {docking_station.dock(bike_2)}.to raise_error(RuntimeError)
  end

end



=begin
it "makes an instance of the DockingStation class" do
  docking_station = DockingStation.new
  expect(docking_station).to be_instance_of(DockingStation)
end

  it "has instances which respond to the method release_bike" do
    docking_station = DockingStation.new
    expect(docking_station).to respond_to(:release_bike)
end
=end
