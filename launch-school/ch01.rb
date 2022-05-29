# How do we create an object in Ruby? Give an example of the creation of an object.
# class MyClass
# end

# my_obj = MyClass.new

# What is a module? What is its purpose? How do we use them with our classes? Create a module for the class you created in exercise 1 and include it properly.
# A module is a method that can be imported into a class. The module does not care what the class is or it's previous properties, just that it can perform it's desired result

module Study
  def study(time)
    puts "Studying for #{time} minutes"
  end
end

class MyClass
  include Study
end

my_obj = MyClass.new

my_obj.study(30)