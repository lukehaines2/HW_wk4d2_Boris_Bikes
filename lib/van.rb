class Van

  DEFAULT_CAPACITY = 10

  def initialize options = {}
    @capacity = options.fetch(:capacity, DEFAULT_CAPACITY)
    @bikes = []
  end

  def bike_count
    @bike_count
    @bikes.count
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

  def available_bikes
    @bikes.reject { |bike| bike.working? }
  end


end