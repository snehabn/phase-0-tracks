# 5.3

# Release 3
#initialize empty hash to be filled in with each prompt
applicant = {}

# welcome applicant
puts "Welcome to the Design Portal!"


# prompt the user for name input, save it to a string, fill in hash
puts "Please enter your name."
name = gets.chomp.capitalize
applicant[:applicant_name] = name

# prompt the user for age, save it to integer
puts "Hello #{name}! Please don't mind us asking, how old are you?"
age = gets.chomp.to_i
applicant[:applicant_age] = age

# prompt the user for decor theme, save it to string
puts "Alright #{name}, what is your ideal decor theme?"
decor_theme = gets.chomp.downcase
applicant[:applicant_decor] = decor_theme

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
applicant[:applicant_color_blindess] = color_blindness


# prompt the user for location, save it to string
puts "So #{name}, what state are you from?"
location = gets.chomp.capitalize
applicant[:applicant_location] = location

p applicant

