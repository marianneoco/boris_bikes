require './lib/bike.rb'

class DockingStation

  attr_reader :bike

  def release_bike
    if bike == nil
      raise RuntimeError, 'There is no bike available'
    else
      bike = Bike.new
    end
  end

  def dock(bike)
    if @bike == nil
      @bike = bike
    else
      raise RuntimeError, 'Docking station is full'
    end
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
