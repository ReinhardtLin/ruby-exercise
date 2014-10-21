class Vehicle
	@@number_of_vehicles = 0

  def self.number_of_vehicles
    puts "This program has created #{@@number_of_vehicles} vehicles"
  end

  def initialize
    @@number_of_vehicles += 1
  end
  
  def self.gas_mileage(liters, kilometers)
    puts "#{kilometers / liters} kilometers per liter of gasoline"
  end
end

class MyCar < Vehicle
  NUMBER_OF_TIRES = 4
end

class MyTruck < Vehicle
  NUMBER_OF_TIRES = 6
end