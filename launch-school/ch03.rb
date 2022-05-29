class MyCar 
  attr_accessor :color # getter & setter
  attr_reader :year # getter

  def initialize (year, color, model)
    @year = year
    @color = color
    @model = model
    @current_speed = 0
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

  def to_s
    "Look at my shiny #{@color} #{@year} #{@model}"
  end

end

lumina = MyCar.new(2000, "white", "chevy lumina")
puts lumina