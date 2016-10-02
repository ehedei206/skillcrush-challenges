class Transport

	attr_accessor :type, :capacity

end

class Car < Transport

	attr_accessor :brand, :year	

end

class Train < Transport

	attr_accessor :cars
end

class Bus < Transport
	
	attr_accessor :decks

end

my_car=Car.new
my_car.brand="BMW"
my_car.year=2010
my_car.capacity=5
my_train=Train.new
my_train.cars=9
my_train.capacity=239
my_bus=Bus.new
my_bus.decks=2
my_bus.capacity=81
puts my_car.inspect
puts my_bus.inspect
puts my_train.inspect

