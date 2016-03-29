#Release 1

p fruit = []

p fruit << "apples" << "bananas" << "guavas" << "oranges" << "pineapples"

p fruit << "mangoes"

fruit.delete("apples")

p fruit

if fruit.include?("bananas")
  p "bananas are present"
end

###############################################

p vegetable = ["carrots", "cabbage", "onion"]

food_market = fruit + vegetable

p food_market

################################################
#Release 2

def sports(player, team, sport)
  @games=[player, team, sport]
end

p sports("bob", "wildcats", "tennis")

################################################

def add_to_array(array, state)
   array << state
end

p add_to_array([1, 2, 3], "california")
p add_to_array(fruit, "florida")
p add_to_array(@games, "new york")

################################################
\