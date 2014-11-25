class Goat
  attr_accessor :age, :name, :pokes, :milk_in_udders, :moody

  def initialize(name,age)
    @name = name
    @age = age
    @pokes = 0
    @milk_in_udders = 1.0
    @moody = false
  end

  def poke
    @pokes += 1
    if @pokes <= 3
      "baa"
    else
      "BAAAAAA GO AWAY"
      @moody = true
    end
  end  

  def milk
    @milk_in_udders = @milk_in_udders*0.5
    "You have milked #{@milk_in_udders} liters of milk"
  end

  def feed(food)
    food = food.downcase 
    if food == "grass"
      @milk_in_udders = @milk_in_udders*1.3
    elsif food == "muesli"
      @milk_in_udders = @milk_in_udders*1.4
    elsif food == "tofurkey"
      @milk_in_udders = @milk_in_udders*1.25
    else
      "BAAAAA"
      @milk_in_udders = @milk_in_udders*0.9
    end
  end
end