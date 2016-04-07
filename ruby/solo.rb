# CAMERA ------------------------
# Nikon

# CHARACTERISTICS ----------------attributes
# Camera model: Nikon, varies
# Body model: D7100, varies
# Lens brand: Nikkor, varies
# cost: varies
# Number owned: 2
# Picture file format: RAW
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
# Make a Slide show

class Camera
	
	attr_reader :camera_model, :body_model, :lens_brand
	attr_accessor :cost, :file_format
	
	def initialize(camera_model, body_model, lens_brand)
		@camera_model = camera_model
		@body_model = body_model
		@lens_brand = lens_brand
		@cost = 0
		@file_format = file_format
	end
	
	def photo_album
		@picture = ["mountain", "ocean", "valley", "city", "lake" ]
	end
	
	def take_picture(num_of_pic)
		puts "You have taken #{num_of_pic} pictures."
	end
	
	def add_to_album(picture)
		
	end
	
	def make_movie(hours)
		minutes = hours * 60
		puts "Your movie is #{minutes} minutes long."
	end
	
	def slideshow
		p @picture
	end

end