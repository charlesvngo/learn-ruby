module Towable
  def can_tow?(pounds)
    pounds < 2000
  end
end

class Vehicle 
  attr_accessor :color # getter & setter
  attr_reader :year, :model # getter
  @@number_of_vehicles = 0

  def self.vehicle_count
    @@number_of_vehicles
  end

  def initialize (year, color, model)
    @year = year
    @color = color
    @model = model
    @current_speed = 0
    @@number_of_vehicles += 1
  end

  def speed_up (number)
    @current_speed += number
    puts "You increase the speed by #{@current_speed}"
  end

  def brake (number)
    @current_speed -= number
    puts "You slow down by #{number}"
  end

  def current_speed 
    puts "The car is running at #{@current_speed}"
  end

  def shut_down
    @current_speed = 0
    puts "Lets stop this baby!"
  end

  def spray_paint(color)
    self.color = color
    puts "Your new #{color} paint job looks great!"
  end

  def self.gas_mileage(gallons, miles)
    puts "#{miles / gallons} miles per gallon of gas"
  end

  def age
    "Your #{self.model} is #{years_old} years old."
  end

  private

  def years_old
    Time.now.year - self.year
  end
end

class MyCar < Vehicle 
  NUMBER_OF_DOORS = 4

  def to_s
    "My car is a #{self.color}, #{self.year}, #{self.model}"
  end
end

class MyTruck < Vehicle
  include Towable

  NUMBER_OF_DOORS = 2

  def to_s
    "My truck is a #{self.color}, #{self.year}, #{self.model}"
  end
end


lumina = MyCar.new(2000, "white", "chevy lumina")
puts lumina

tacoma = MyTruck.new(2006, "silver", "toyota tacoma")
puts tacoma


puts MyCar.ancestors
puts MyTruck.ancestors
puts Vehicle.ancestors

puts tacoma.age


class Student 
  attr_accessor :name
  def initialize (name, grade)
    @name = name
    @grade = grade
  end

  def better_grade_than?(name)
    if self.grade > name.grade
      puts "Well Done!"
    end
  end

  def hi
    puts "Hello #{self.name}"
  end

  protected

  def grade
    @grade
  end

  private

end


joe = Student.new("Joe", 90)
bob = Student.new("Bob", 80)

joe.better_grade_than?(bob)
bob.hi