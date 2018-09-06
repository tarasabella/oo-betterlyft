class Driver
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
    Ride.all.select{|ride| ride.driver == self}
  end

  def passenger_names
    rides.map{|ride| ride.passenger.name}.uniq
  end

  def self.mileage_cap(distance)
    self.all.select{|driver| driver.total_distance > distance}
  end

  # def log_new_ride(passenger, distance)
  #   new_ride = Ride.new(self, passenger, distance)
  # end

  # private
  def total_distance
    sum = 0
    rides.each {|ride| sum += ride.distance}
    sum
  end

end
