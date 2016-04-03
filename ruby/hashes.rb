# 5.3

# Release 3
applicant = {}
# welcome applicant
puts "Welcome to the Design Portal!"

# prompt the user for name input, save it to a string
puts "Please enter your name."
name = gets.chomp.capitalize
applicant[:name] = name

# prompt the user for age, save it to integer
puts "Hello #{name}! Please don't mind us asking, how old are you?"
age = gets.chomp.to_i
applicant[:age] = age

# prompt the user for decor theme, save it to string
puts "Alright #{name}, what is your ideal decor theme?"
decor_theme = gets.chomp.downcase
applicant[:decor_theme] = decor_theme

# prompt the user for color-blindness, save it to boolean
puts "#{name}, do you have any color-blindness that we need to be aware of when we make design plans? yes/no"
correct_response = false
until correct_response
	color_blind = gets.chomp.downcase
	if color_blind == "yes" || color_blind == "no"
		correct_response = true
	else
		puts "We didn't quite get that, please type (yes) or (no)."
	end
end

if color_blind =="yes"
	color_blindness = true
else
	color_blindness = false
end
applicant[:color_blindess] = color_blindness


# prompt the user for location, save it to string
puts "So #{name}, what state are you from?"
location = gets.chomp
applicant[:location] = location

#print out information in the hash for user to review.
puts applicant

#ask applicant if they want to modify any applicant information.
puts "Please enter the information you would like to update. E.g. 'name'. If you don't have anything to change, please enter 'none'."
to_update = gets.chomp

# if they enter done, end the program and print the hash as confirmation. Else, turn input into symbol and prompt for updated value. Replace the key-value pair in the hash.
# print the final hash and message.
if to_update.downcase == "none"
	puts "Thank you, we will be in touch."
	p applicant
else
	to_update_sym = to_update.downcase.to_sym
	puts "What would you like to update this to?"
	updated_value = gets.chomp
	applicant[to_update_sym] = updated_value
	puts "Thank you for the update. Please verify the details."
	
	p applicant
end
