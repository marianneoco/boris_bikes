require './lib/bike.rb'

class DockingStation

  CAPACITY = 20

  attr_reader :bikes

  def initialize
    @bikes = []
  end

  def release_bike
    if @bikes.empty?
      raise RuntimeError, 'There is no bike available'
    else
      @bikes.pop
    end
  end

  def dock(bike)
    if @bikes.length < CAPACITY
      @bikes.push(bike)
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
