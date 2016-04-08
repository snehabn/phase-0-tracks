# CAMERA ------------------------
# Nikon

# CHARACTERISTICS ----------------attributes
# Camera model: Nikon, varies
# Body model: D7100, varies
# Lens brand: Nikkor, varies
# cost: varies
# Picture file format: RAW, varies
# Album: array of mountain, ocean, valley, city, lake

# BEHAVIOR -----------------------methods
# Take Pictures(number)
###return statement indicating number of pictures taken.
# Add photos to album(Picture)
### identify the Picture in the Pictures array
### put that picture first in the array as recently modified.
# Make a movie(hours)
### convert hours to minutes
### return the total minutes
# Find a photo
### access and return the photo from the pictures array. Move it to the zeroth element of the array. print array

class Camera
	
	attr_reader :camera_model, :body_model, :lens_brand
	attr_accessor :cost, :file_format
	
	def initialize(camera_model, body_model, lens_brand)
		@camera_model = camera_model
		@body_model = body_model
		@lens_brand = lens_brand
		@cost = 0
		@file_format = "RAW"
		puts "Initializing new camera instance..."
	end
	
	def photo_album
		@picture = ["mountain", "ocean", "valley", "city", "lake" ]
		p @picture
	end
	
	def take_picture(num_of_pic)
		puts "You have taken #{num_of_pic} pictures."
	end
	
	def add_to_album(picture)
		@picture << picture
		p @picture
	end
	
	def make_movie(hours)
		minutes = hours * 60
		puts "Your movie is #{minutes} minutes long."
	end
	
	def find_photo(photo)
		@photo = photo
		@picture.delete(@photo)
		@picture.insert(0, @photo)
		p @picture
	end
end

nikon = Camera.new("Nikon", "D7100", "Nikkor")
p nikon.photo_album
p nikon.add_to_album("volcano")
p nikon.cost = 1000
p nikon.find_photo("volcano")
p nikon

#Release 2

puts "Hello and welcome to your camera portal. What is your name?"
name = gets.chomp.capitalize

puts "Hello #{name}, what camera brand do you own?"
camera_model = gets.chomp

puts "Now, what model of the body do you have?"
body_model = gets.chomp

puts "Finally what lens are you using?"
lens_brand = gets.chomp

new_camera = Camera.new(camera_model, body_model, lens_brand)

puts "Thank you for the information!"
puts "Here is a menu of available actions:"
puts "1 - View photo album"
puts "2 - Take a picture"
puts "3 - Add photo to album"
puts "4 - Make a movie"
puts "5 - Find a photo from your album"
puts "What would you like to do? Please enter a number corresponding to your choice."
action = gets.chomp.to_i
p action
# case action

# when action.include? "take"
# 	puts "Please enter name of picture to add to your album."
	

	
	
