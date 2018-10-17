class Passenger
  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def rides
    Ride.all.select{|ride| ride.passenger == self}
  end

  def drivers
    # rides.map(&:driver).uniq
    rides.map{|ride| ride.driver}.uniq
  end

  def total_distance
    total = 0
    rides.each do |ride|
      total += ride.distance
    end
    total
  end

  def self.premium_members
    self.all.select do |passenger|
      passenger.total_distance > 100
    end
  end

  def add_ride(driver, distance)
    Ride.new(driver, self, distance)
  end

end
