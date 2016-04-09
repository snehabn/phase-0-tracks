# #Release 1

# module Shout
#   def self.yell_angrily(words)
#     words + "!!!" + " :("
#   end
#   def self.yelling_happily(words)
#   	words + "yay!!"
#   end
# end

# p Shout.yell_angrily("Darn")

# p Shout.yelling_happily("Super!")

module Shout
	def yell_excitely(words)
		words_excited = words + "!!!" + "So Excited!"
		puts "#{words_excited}"
	end

	def yell_scaredly(words)
		words_scared = words + "!!!" + "That was scary!"
		puts "#{words_scared}"
	end
end

class Dog
	include Shout
end

class Kid
	include Shout
end

dog = Dog.new
dog.yell_excitely("Snacks")
dog.yell_scaredly("A Spider")


kid = Kid.new
kid.yell_excitely("Candy")
kid.yell_scaredly("A Monster")
