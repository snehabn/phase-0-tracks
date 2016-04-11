	
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
# Method to call on class Camera and store instances
# INPUT: prompt user for instance variables
# STEPS:
### transform inputs to appropriate types.
### initialize new Camera method with inputs.
### save new instances into data structure.
### loop through until user prompts that they are done.
# OUTPUTS:
### Print out the attributes of each instance in readable format.

puts "Hello and welcome to your camera portal. What is your name?"
name = gets.chomp.capitalize

new_camera = []
entries = true

count = 0 

while entries

	puts "Hi #{name}, please enter camera brand:"
	camera_model = gets.chomp.capitalize
	
	
	puts "Now, what body model of the #{camera_model} do you have?"
	body_model = gets.chomp.upcase
	
	
	puts "What brand lens are you using?"
	lens_brand = gets.chomp.capitalize
	
	
	puts "How much did your camera cost? Leave blank if you can't remember."
	camera_cost = gets.chomp.to_f
	
	puts "Finally, what file format are your pictures in?"
	photo_format = gets.chomp
	

	camera = Camera.new(camera_model,body_model, lens_brand)
	camera.cost = camera_cost
	
	if photo_format != ""
		camera.file_format = photo_format
	end
	
	new_camera << camera
	
	
	camera_entry = ""
	until camera_entry == "yes" || camera_entry =="no"
	
		puts "Your camera has been entered, #{name}! Would you like to enter another camera? yes/no"
		camera_entry = gets.chomp.downcase
		
		if camera_entry == "no"
			entries = false
		else
			entries
		end
	end

end

new_camera.each do |information|
	count += 1
	puts "For camera #{count}, you have inserted the following information: 
	Your camera model is #{information.camera_model}.
	Your camera's body model is #{information.body_model}.
	Your lens is a #{information.lens_brand}.
	It cost you $#{information.cost}.
	The picture is saved in #{information.file_format} format."
	puts
	puts
end

puts "Thanks for visiting this camera portal! Please visit again!"

