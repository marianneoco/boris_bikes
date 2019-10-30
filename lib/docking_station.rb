require './lib/bike.rb'

class DockingStation

  attr_reader :bike

  def release_bike
    if bike == nil
      raise RuntimeError, 'There is no bikes available'
    else
      bike = Bike.new
    end
  end

  def dock(bike)
    @bike = bike
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
