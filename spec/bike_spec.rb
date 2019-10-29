require './lib/bike'

describe Bike do
  it { should respond_to(:working?) }
end

=begin
"responds to the method working?" do
  bike = Bike.new
  expect(bike).to respond_to(:working?)
=end
