class Van

  DEFAULT_CAPACITY = 10

  def initialize options = {}
    @capcity = options.fetch(:capacity, DEFAULT_CAPACITY)
    @bikes = []
  end

  def bike_count
    @bike_count
    @bikes.count
  end





end