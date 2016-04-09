	
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
	attr_accessor :cost, :file_format, :picture
	
	def initialize(camera_model, body_model, lens_brand)
		@camera_model = camera_model
		@body_model = body_model
		@lens_brand = lens_brand
		@cost = 0
		@file_format = "RAW"
		@picture
		puts "Initializing new camera instance..."
	end
	
	def photo_album
		@picture = ["mountain", "ocean", "valley", "city", "lake" ]
	end
	
	def take_picture(num_of_pic)
		puts "You have taken #{num_of_pic} pictures."
	end
	
	def add_to_album(picture)
		@picture.insert(0, picture)
		p @picture
	end
	
	def make_movie(hours)
		minutes = hours * 60
		puts "Your movie is #{minutes} minutes long."
	end
	
	def find_photo(photo)
		@photo = photo
		@picture.delete(photo)
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

puts "How many cameras would you like to enter?"
num_of_cameras = gets.chomp.to_i

num_of_cameras.times do
	
puts "Please enter camera brand:"
camera_model = gets.chomp

puts "Now, what model of the #{camera_model} do you have?"
body_model = gets.chomp

puts "What brand lens are you using?"
lens_brand = gets.chomp

puts "Finally, how much did your camera cost?"
camera_cost = gets.chomp.to_i


new_camera = Camera.new(camera_model, body_model, lens_brand)

puts "Thank you for the information!"
puts "Here is a menu of available actions:"
puts "1 - View photo album"
puts "2 - Take a picture"
puts "3 - Add photo to album"
puts "4 - Make a movie"
puts "5 - Find a photo from your album"

choice = false

until choice

	puts "What would you like to do? Please enter a number corresponding to your choice."
	action = gets.chomp.to_i
	
	case action
	
	when 1
		puts "Here are the photos currently in your album:"
		new_camera.photo_album.each do |photo|
			puts "#{photo}"
		end
		choice = true
	when 2
		puts "How many photos would you like to take?"
		photos_to_take = gets.chomp.to_i
		puts "Get ready to take #{photos_to_take} photos!"
		photos_to_take.times do |i|
			puts "Say cheese!"
			puts "Click!"
		end
		choice = true
	when 3
		puts "Please list the names of the photos you wish to add to your album:"
		photo_to_album = gets.chomp
		p new_camera.photo_album
		new_camera.add_to_album(photo_to_album)
		p new_camera.photo_album
		# puts "Here is your updated album library:"
		
		# new_camera.photo_album.each do |photo|
		# 	puts "#{photo}"
		# end
		choice = true
	when 4
		puts "How many hours do you want your movie to be?"
		movie_duration = gets.chomp.to_f
		movie_minutes = movie_duration * 60
		p "Your movie will be #{movie_minutes} minutes long."
		choice = true
	when 5
		puts "Please enter the name of the photo to find:"
		locate_photo = gets.chomp.downcase
		new_camera.find_photo(locate_photo)
		choice = true
	else
		puts "You have entered invalid number. Please choose from choices 1 thru 5."
		choice = false
end
end
end

puts "Thank you for visiting this camera portal!"