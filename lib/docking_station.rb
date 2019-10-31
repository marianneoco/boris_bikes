require './lib/bike.rb'

class DockingStation

  DEFAULT_CAPACITY = 20

  attr_reader :bikes, :capacity

  def initialize(capacity = DEFAULT_CAPACITY)
    @bikes = []
    @capacity = capacity
  end

  def release_bike
    if empty?
      raise RuntimeError, 'There is no bike available'
    else
      @bikes.pop
    end
  end

  def dock(bike)
    if full?
      raise RuntimeError, 'Docking station is full'
    else
      @bikes.push(bike)
    end
  end

  private

  def empty?
    @bikes.length == 0 ? true : false
  end

  def full?
    @bikes.length < DEFAULT_CAPACITY ? false : true
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
