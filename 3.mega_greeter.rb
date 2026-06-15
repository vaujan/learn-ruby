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
      puts "Goodbye, #{names}. Please do come again"
    end
  end
  
  attr_accessor :names

end


classmates = ["indira", "firda", "fauzan"]

greet_classmates = MegaGreeter.new(classmates)

greet_classmates.say_bye