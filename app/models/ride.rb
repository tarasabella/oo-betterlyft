class Ride
  attr_reader :driver, :passenger, :distance
  @@all = []

  def initialize(driver, passenger, distance)
    @driver = driver
    @passenger = passenger
    @distance = distance.to_f
    @@all << self
  end

  def self.all
    @@all
  end

  def self.average_distance
    # all rides
    # need all distances
    # add up all distances
    # divide by number of rides
    total = self.all.inject(0){|sum, ride| sum + ride.distance}
    total/self.all.size
  end
end
