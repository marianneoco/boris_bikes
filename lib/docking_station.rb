require './lib/bike.rb'

class DockingStation
  def release_bike
    bike = Bike.new
  end

  def dock(bike)

  end
end

=begin
the class Bike had to be added in to ensure the variable of Bike would be
recognised, Part10

class Bike
  def working?
    true
  end
end
=end
