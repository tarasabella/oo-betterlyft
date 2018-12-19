class Ride
  attr_accessor :driver, :passenger, :distance

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
    # inject array to get sum of all instances
    # Ride.all.collect{|ride|}

    # access distances from rides
    # use some kind of iteration to collect all the distances from rides array
    # add up all of the distances and divide by # rides

    # distances = self.all.map{|ride| ride.distance}
    self.all.inject(0){|sum, ride| sum + ride.distance}/self.all.size
    # distances.inject(0){|sum, n| sum + n}/distances.size
    # another method:
    # sum = 0
    # self.all.each do |ride|
    #   sum += ride.distance
    # end
    # sum/self.all.count
  end

end

# - `Ride.average_distance`
#   - Returns the average distance across ALL rides
