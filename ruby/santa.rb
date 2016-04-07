#Release 0

#define a santa class

class Santa
  attr_reader :gender, :ethnicity
  attr_accessor :age  
  
  def initialize(gender, ethnicity, suit_color)
    @gender = gender
    @ethnicity = ethnicity
    @age = 0
    @suit_color = suit_color
    puts "Initializing Santa instance ..."
  end
  
  def speak
    puts "Ho, ho, ho! Haaaappy holidays!"
  end

  def eat_milk_and_cookies(cookie)
    puts "That was a good #{cookie}!"
  end

  def reindeer_ranking
    @reindeers = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
  end
#setter methods  
  # def age= (new_age)
  #   @age = new_age
  #   p @age
  # end

  def celebrate_birthday
    @age = @age + 1
    puts "It's Santa's Birthday! He is now #{@age} years old!"
  end
  
  def get_mad_at(reindeer)
    @reindeer = reindeer
    @reindeer.capitalize!
    @reindeers.delete(@reindeer)
    @reindeers.insert(8, @reindeer)
    p @reindeers
  end
# #getter methods  
#   def gender
#     @gender
#   end
  
#   def ethnicity
#     @ethnicity
#   end
end

claus = Santa.new("female", "indian", "red")
claus.speak
claus.eat_milk_and_cookies("cookie")
claus.age = (44)
claus.celebrate_birthday
claus.reindeer_ranking
claus.get_mad_at("vixen")
claus.get_mad_at("rudolph")
p claus = Santa.new("female", "indian", "red")


# # #Release 1
santas = []
example_genders = ["straight", "gay", "gender fluid", "male", "female", "agender"]
example_ethnicity = ["American", "Canadian", "Mexican", "British", "Spanish", "French", "Indian"]
example_suit_color = ["red","orange", "yellow", "green", "blue", "violet"]
age = [rand(1..140)]
example_ethnicity.length.times do |i|
  santas << Santa.new(example_genders[i], example_ethnicity[i], example_suit_color[i])
end

# p santas

# #Release 4

puts "Enter number of random Santas to generate:"
num_santas = gets.chomp.to_i
num_santas.times do
  s_claus = Santa.new(example_genders.sample, example_ethnicity.sample, example_suit_color.sample)
  s_claus.speak
  s_claus.eat_milk_and_cookies("cookie")
  s_claus.age = rand(1..140)
  p s_claus
end

