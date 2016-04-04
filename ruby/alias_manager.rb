# 5.6

#define methods to increase vowels and consonants

# define a method that will take input and advance it to the next vowel
def vowelnext(name)
	##permanently substitutes any aeiou or AEIOU with the next vowel
	return name.gsub(/[aeiouAEIOU]/, 'a' => 'e', 'e' => 'i','i' => 'o', 'o' => 'u', 'u'=> 'a',
									'A' => 'E', 'E' => 'I', 'I'=>'O','O'=>'U')
end

# define a method that will take input and advance it to the consonant
def consonant_next(name)
	for i in 0..name.length-1
	# see if it is a vowel or space
	# if not a vowel or space advance to next letter
		vowels = "AEIOUaeiou "
		## logic: if the string in vowels doesn't have the letter from name, move to the next letter. 
		## else if it does, then increment the letter by 2 letters to skip over the vowel.
		## else increment letter by 1 letter.
		### replace the z or Z to b or B...to address edge cases
		if vowels.include? name[i].downcase
			next
		else
			if name[i] == "z" 
				name[i] = "b"
			elsif name[i] == "Z"
				name[i] = "B"
			elsif vowels.include? name[i].next.downcase
				name[i] = name[i].next.next
			else
				name[i] = name[i].next
			end
		end
	end
	return name
end

#initialize new hash to store user input and result
name_hash = {}

#prompt for user name
puts "Please enter your full name:"

#assign name to variable
full_name = gets.chomp

#until user input is quit, run loop.
until full_name == "quit"

	# using split, split up the string into two strings. Reverse the order of the strings
	 full_name_split = full_name.split(' ').reverse
	
	# split the strings up and split further into characters
	 last_name = full_name_split[0]
	 first_name = full_name_split[1]
	
	# switch out vowels to the next vowels
	 last_name = vowelnext(last_name)
	 first_name = vowelnext(first_name)
	
	#switch out consonants to the next consonants
	 last_name = consonant_next(last_name)
	 first_name = consonant_next(first_name)
	
	#stich together the last name and the first name
	reversed_name = [last_name, first_name].join(" ")
	puts" Your fake name is #{reversed_name}!"
	
	#store full_name and reversed_name to hash.
	name_hash[full_name] = reversed_name
	
	#prompt for user name
	puts "Please enter your full name:"
	
	#assign name to variable
	full_name = gets.chomp
	
end


#printing user input and result in readable format
name_hash.each do |k, v| puts "#{k} is also known as #{v}." end
	

