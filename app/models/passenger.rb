class Passenger
  attr_reader :name

  @@all = []

  def initialize(name = nil)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def rides
    Ride.all.select do |ride|
      ride.passenger == self
    end
  end

  def drivers
    # Ride.all.select{|ride| ride.driver == self}
    rides.map{|ride| ride.driver}
    # same as self.rides
  end

  def add_ride(driver, distance)
    Ride.new(driver, self, distance)
  end

  def total_distance
    # needs all rides
    # collect the distances from all rides, add them together
    # this way works! Thanks, Leizl
    # sum = 0
    # rides.each do |ride|
    #   sum += ride.distance
    # end
    # sum
    rides.inject(0) {|sum, ride| sum + ride.distance }
  end

  def self.premium_members
    # need array of preium members
    self.all.select do |passenger|
      passenger.total_distance > 100
    end
  end

end
