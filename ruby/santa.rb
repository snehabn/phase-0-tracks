#Release 0

#define a santa class

class Santa

	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end

	def eat_milk_and_cookies(cookie)
		puts "That was a good #{cookie}!"
	end

	def initialize(gender, ethnicity, suit_color)
		@gender = gender
		@ethnicity = ethnicity
		@age = 0
		@suit_color = suit_color
		puts "Initializing Santa instance ..."
	end
	
	def reindeer_ranking
		@reindeers = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		p @reindeers
	end
	
	def years_old(age)
		@age = age
	end

	def celebrate_birthday= (new_age)
		@age = new_age += 1
		puts "It's Santa's Birthday! He is now #{new_age} years old!"
	end
	
	def get_mad_at= (reindeer)
		@reindeer = reindeer
		@reindeer.capitalize!
		@reindeers.delete(@reindeer)
		@reindeers.insert(8, @reindeer)
		p @reindeers
	end
	
	def gender
		@gender
	end
	
	def ethnicity
		@ethnicity
	end
end
claus = Santa.new("female", "indian", "red")
claus.speak
claus.eat_milk_and_cookies("cookie")
claus.years_old(44)
claus.celebrate_birthday= (99)
claus.reindeer_ranking
claus.get_mad_at= "vixen"
claus.get_mad_at = "rudolph"

#Release 1
santas = []
example_genders = ["straight", "gay", "gender fluid", "male", "female", "agender"]
example_ethnicity = ["American", "Canadian", "Mexican", "British", "Spanish", "French", "Indian"]
example_suit_color = ["red","orange", "yellow", "green", "blue", "violet"]

example_ethnicity.length.times do |i|
	santas << Santa.new(example_genders[i], example_ethnicity[i], example_suit_color[i])
end

p santas
