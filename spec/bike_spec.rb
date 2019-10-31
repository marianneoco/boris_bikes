require './lib/bike'

describe Bike do
  it { should respond_to(:working?) }

  it "allows user to report bike as not working" do
    bike = Bike.new
    bike.working?(false)
    expect(bike.working?).to eq false
  end

end
=begin
"responds to the method working?" do
  bike = Bike.new
  expect(bike).to respond_to(:working?)
=end
