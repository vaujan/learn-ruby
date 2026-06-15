# Class definition always starts with capital.
# Class is basically just a bunch of methods (function)

class Greeter 
  def initialize(name = "stranger")
    @name = name
  end
  def say_hi
    puts "Hello, #{@name.capitalize}!"
  end
  def say_bye
    puts "Bye, #{@name.capitalize}. Please come again!"
  end
  
  # Possible to view or change the name
  attr_accessor :name
end


# person_name = "fauzan"
# person_greeter = Greeter.new(person_name)

# # Will say hello and by to "Fauzan"
# person_greeter.say_hi
# person_greeter.say_bye

# # View the name
# puts person_greeter.respond_to?("name")
# puts person_greeter.name

# # and changing it to "Via"
# person_greeter.name="via"

# person_greeter.say_hi
# person_greeter.say_bye