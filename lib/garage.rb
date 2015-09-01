class Garage

  DEFAULT_CAPACITY = 25

  def initialize options={}
    @capacity = options.fetch(:capacity, DEFAULT_CAPACITY)
    @bikes = []
  end 

  def bike_count
    @bikes.count
  end

  def accept bike
    @bikes << bike
  end

  def load bike
    raise 'Van is full' if full?
    @bikes << bike
  end

  def unload bike
    @bikes.delete bike
  end

  def full?
    bike_count == @capacity
  end

  def fix bike
    bike.broken = false
  end


end
