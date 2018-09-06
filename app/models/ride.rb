class Ride
  attr_reader :passenger, :driver, :distance

  @@all = []

  def initialize(driver, passenger, distance)
    @driver = driver
    @passenger = passenger
    @distance = distance
    @@all << self
  end

  def self.all
    @@all
  end

  def self.average_distance
    sum = 0
    self.all.each{|ride| sum += ride.distance}
    sum/self.all.length
  end
end
