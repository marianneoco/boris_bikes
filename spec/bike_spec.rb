require './lib/bike'

describe Bike do
  it { should respond_to(:working?) }

  it "has an instance variable working that defaults to true" do
    bike = Bike.new
    expect(bike.works).to eq true
  end

  it "user can report bike as not working" do
    bike = Bike.new(false)
    expect(bike.works).to eq false
  end
end


=begin

"responds to the method working?" do
  bike = Bike.new
  expect(bike).to respond_to(:working?)
=end
