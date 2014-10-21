class Vehicle
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