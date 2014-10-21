class MyCar
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

	attr_accessor :color
	attr_reader :year

	def spray_paint(color)
		self.color = color
		puts "You piant your car as the new color of #{color}!"
	end
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