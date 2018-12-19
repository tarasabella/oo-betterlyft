class Driver
  attr_accessor :name
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
    passenger_names = rides.map do |ride|
      ride.passenger.name
    end
    passenger_names.uniq
  end

  def total_distance
    rides.inject(0) {|sum, ride| sum + ride.distance }
  end

  def self.mileage_cap(distance)
    self.all.select{|driver| driver.total_distance > distance}
  end

end
