require './lib/boris_bikes'

describe DockingStation do
  it { should respond_to(:release_bike) }
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
