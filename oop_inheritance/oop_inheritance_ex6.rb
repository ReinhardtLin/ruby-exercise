module Towable
	def can_tow?(kilograms)
		kilograms < 100 ? true : false
	end
end

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
  attr_accessor :color
  attr_reader :year

  def initialize(year, model, color)
    @year = year
    @model = model
    @color = color
    @current_speed = 0
  end

  def speed_up(number)
    @current_speed += number
    puts "You push the gas to accelerate to #{number} km/hr."
  end

  def brake(number)
    @current_speed -= number
    puts "You push the brake to decelerate to #{number} km/hr."
  end

  def current_speed
    puts "You are now driving at #{@current_speed} km/hr."
  end

  def stop
    @current_speed = 0
    puts "You stop the car."
  end

  def spray_paint(color)
    self.color = color
    puts "You piant your car as the new color of #{color}!"
  end

  def self.gas_mileage(liters, kilometers)
    puts "#{kilometers / liters} kilometers per liter of gasoline"
  end

  def to_s
      "My car is a #{self.color}, #{self.year}, #{@model}!"
  end

  def age
    "Your #{self.model} is #{years_old} years old."
  end

  private

  def years_old
    Time.now.year - self.year
  end
end

class MyTruck < Vehicle
  NUMBER_OF_TIRES = 6
end

tercel = MyCar.new(2005, 'toyota tercel', 'silver')
tercel.speed_up(60)
tercel.current_speed
tercel.speed_up(60)
tercel.current_speed
tercel.brake(60)
tercel.current_speed
tercel.brake(60)
tercel.current_speed
tercel.stop
tercel.current_speed

tercel.color = 'silver'
puts tercel.color
puts tercel.year

tercel.spray_paint('white')

MyCar.gas_mileage(1, 15)

my_car = MyCar.new("2015", "Tesla Motor S", "white")
puts my_car

puts tercel.age