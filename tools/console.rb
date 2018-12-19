require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


# Put your variables here~!
simon = Passenger.new("Simon")
jeff = Passenger.new("Jeff")
rhu = Passenger.new("Rhuwell")

tara = Driver.new("Tara")
leizl = Driver.new("Leizl")
jane = Driver.new("Jane")

ride1 = Ride.new(tara, rhu, 50.0)
ride2 = Ride.new(tara, simon, 5.0)
ride3 = Ride.new(jane, jeff, 5.0)
ride4 = Ride.new(leizl, jeff, 5.0)
ride5 = Ride.new(tara, rhu, 70.8)
ride6 = Ride.new(jane, simon, 100.8)



binding.pry
