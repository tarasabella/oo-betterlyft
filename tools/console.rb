require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


# Put your variables here~!
olivia = Passenger.new("Olivia")
carson = Passenger.new("Carson")
alex = Passenger.new("Alex")


hassan = Driver.new("Hassan")
tien = Driver.new("Tien")
matt = Driver.new("Matt")
jane = Driver.new("Jane")

ride1 = Ride.new(hassan, olivia, 100)
ride2 = Ride.new(jane, carson, 3.4)
ride3 = Ride.new(matt, alex, 200)
ride4 = Ride.new(jane, olivia, 80)
ride4 = Ride.new(jane, olivia, 100)
ride4 = Ride.new(tien, alex, 10)






binding.pry
