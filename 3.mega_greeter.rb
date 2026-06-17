class MegaGreeter
  
  # Create the object
  def initialize(names = "world")
    @names = names
  end
 
  # Hi to everyone
  def say_hi
    if @names.nil?
      puts "..."
    elsif @names.respond_to?("each")
      @names.each do |name|
        puts "Hello, #{name.capitalize}!"
      end
    else
      puts "Hello, #{names.capitalize}"
    end
  end
  
  # Bye to everyone
  def say_bye
    if @names.nil?
      puts "..."
    elsif @names.respond_to?("join") # Can it respond to "join" --> @names.join()
      # another way to put it @names.map{ |name| name.capitalize }
      puts "Goodbye, #{@names.map{|name| name.capitalize}.join(", ")}. Please do come again"
    else
      puts "Goodbye, #{names.capitalize}. Please do come again"
    end
  end
  
  attr_accessor :names

end

class Human
  def initialize(name, age)
    @name = name
    @age = age
  end
  
  def introduce
    puts "Hello, my name is #{@name}, I'm #{@age} years old"
  end
  
  attr_accessor :name, :age
end


# If file is executed directly, run the code below
# __FILE__ is a special constant that holds the filename "3.mega_greeter.rb"

# $0 is another variable for the name of the file, for the ruby interpreter
# that was told to run the file

if __FILE__ == $0

# uncomment the code below to run

classmates = ["indira", "firda", "fauzan"]
mg = MegaGreeter.new(classmates)

mg.say_bye
mg.say_hi
# Goodbye, Indira, Firda, Fauzan. Please do come again
# Hello, Indira!
# Hello, Firda!
# Hello, Fauzan!

mg.names = "fia"

mg.say_bye
mg.say_hi
# Goodbye, Fia. Please do come again
# Hello, Fia

end