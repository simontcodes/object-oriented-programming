class Cat
  def initialize(name, preffered_food, meal_time)
    @name = name
    @preffered_food = preffered_food
    @meal_time = meal_time
  end
  def eats_at
    "#{@meal_time} AM"
   end
   def meow
     puts "my name is #{@name} and i eat #{@reffered_food} at #{@meal_time} AM"
   end

end

garfield = Cat.new('garfield', 'lasagna', '11')
hello_kitty = Cat.new('hello_kitty', 'rainbows', '1')

garfield.meow
hello_kitty.meow
