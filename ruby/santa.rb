#Release 0

#define a santa class

class Santa

	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end

	def eat_milk_and_cookies(cookie)
		puts "That was a good #{cookie}!"
	end

	def initialize(gender, nationality, suit_color)
		@gender = gender
		@nationality = nationality
		@age = 0
		@suit_color = suit_color
		puts "Initializing Santa instance ..."
	end
	
	def reindeer_ranking
		reindeers = [Rudolph, Dasher, Dancer, Prancer, Vixen, Comet, Cupid, Donner, Blitzen]
		puts "#{reindeers}"
	end
	
	def years_old(age)
		@age = age
	end
end
claus = Santa.new("female", "indian", "red")
claus.speak
claus.eat_milk_and_cookies("cookie")

#Release 1
santas = []
example_genders = ["straight", "gay", "gender fluid", "male", "female", "agender"]
example_nationality = ["American", "Canadian", "Mexican", "British", "Spanish", "French", "Indian"]
example_suit_color = ["red","orange", "yellow", "green", "blue", "violet"]

example_nationality.length.times do |i|
	santas << Santa.new(example_genders[i], example_nationality[i], example_suit_color[i])
end

p santas

