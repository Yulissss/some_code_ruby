class Vehicle

  attr_accessor :color, :speed, :model

  def initialize(color, speed, model)
    puts " Вы созадли машину \n Цвет #{@color = color}\n Максимальная корость #{@speed = speed} км/ч \n Модель #{@model = model}"
  end

  def is_speed_car
    if speed >= 200
      puts "Машина #{@model}  быстрая"
    elsif speed >= 120
      puts "Машина #{@model}  средней скорости"
    else
      puts "Машина #{@model}  медленная"
    end
  end

end

class Car < Vehicle
  attr_accessor :is_mechanic, :speed, :model

  def initialize(is_mechanic, speed, model)
    @is_mechanic = is_mechanic
    @speed = speed
    @model = model
  end
end

# mercedes = Vehicle.new("Black", 220, "Mercedes")
# mercedes.is_speed_car
# bmw = Vehicle.new("Black", 140, "BMW")
# bmw.is_speed_car
# audi = Vehicle.new("Black", 80, "Audi")
# audi.is_speed_car

lada  = Car.new(true, 100, "Говно")
lada.is_speed_car
