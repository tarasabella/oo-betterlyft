require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


# Put your variables here~!

kat = Driver.new("Kat")
steven = Driver.new("Steven")

andy = Passenger.new("Andy")
anthony = Passenger.new("Anthony")
hugo = Passenger.new("Hugo")
jane = Passenger.new("Jane")

ride1 = Ride.new(kat, anthony, 55.5)
ride2 = Ride.new(kat, hugo, 33.5)
ride3 = Ride.new(steven, hugo, 18.2)
ride4 = Ride.new(steven, jane, 20.0)
ride5 = Ride.new(steven, hugo, 50)
ride6 = Ride.new(kat, jane, 100.6)

binding.pry
