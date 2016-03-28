#ask user how many employees will be processed
puts "How many employees would you like to process?"
num_employees = gets.chomp.to_i

#Until i is greater than the number of employees to be processed, do loop. Increment i by one after each employee is processed. (see line 109)
i = 1
until i > num_employees
	puts # Adding space to make output cleaner
	puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
	puts "Questionnaire for employee #{i}"
	puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
	
	# Ask for name input
	puts "What is the employee's name?"
	name = gets.chomp.capitalize
	
	# Ask for employee's age
	puts "How old is #{name}?"
	age = gets.chomp.to_i
	
	# Ask for employee's birth year
	puts "What year was #{name} born? (E.g. 1984)"
	birth_year = gets.chomp.to_i
	
	# Until input for garlic question equals yes or no, loop through and ask question.
	# assign empty garlic string for until loop to fill
	garlic = ""

	until garlic == "yes" || garlic == "no"
		puts "Our company cafeteria serves garlic bread. Should we order some for #{name}? (yes/no)"
		garlic = gets.chomp.downcase #standarize input by downcasing
	end
	
	#if garlic = yes, set boolean to be true
	if garlic == "yes"
		garlic = true
	else
		garlic = false
	end
	
	# Until input for health insurance is yes or no, loop through the question.
	# assign empty string for until loop
	health_ins = ""


	until health_ins == "yes" || health_ins == "no"
		puts "Would #{name} like to enroll in the company’s health insurance? (yes/no)"
		health_ins = gets.chomp.downcase
	end

	#if health insurance input is yes, assign tru boolean
	if health_ins == "yes"
		health_ins = true
	else
		health_ins = false
	end
	
	#Ask for employee's allergies.
	puts "What allergies does #{name} have? Please type 'done' when finished."
	allergies = gets.chomp.downcase #standardize the input by downcasing.

	# set new variable to the resulting boolean of allergies input. When input is sunshine set is_allergic_to_sunshine to true.
	# when input for allergies is sunshine, set is_allergic_to_sunshine variable to true
	is_allergic_to_sunshine = case allergies #case assingnement was used as an expression whose result can be set to the variable, just to try out, instead of if/else
	when "sunshine"
		true
	else
		false
	end
	# I also looked up ternaries...basically shorthand for if/else statements. "? :" Could work here too. But will save it for another day!

	# Repeat the question loop until user inputs 'done' If at any point, the user inputs "sunshine", break the loop and set is_allergic_to_sunshine to true.
	until allergies == "done" || is_allergic_to_sunshine
		puts "What else?"
		allergies = gets.chomp.downcase
		if allergies == "sunshine"
			is_allergic_to_sunshine = true
			break
		end
	end
	
	#calculate real age of the employee by subtracting current year by birth year.
	real_age = (Time.now.year.to_i)-(birth_year)
	puts # Adding space to make output cleaner

	#Write if/elsif/else statement to fulfill the conditionals. Had to reorganize the conditionals to have appropriate sequence of outputs.

	#anyone going by the name of “Drake Cula” or “Tu Fang” is clearly a vampire, because come on. In that case, you should print “Definitely a vampire.”
	if name.downcase == "drake cula" || name == "tu fang"
		puts "#{name} is definitely a vampire."
	
	#If the employee got their age wrong, and hates garlic bread or waives insurance, the result is “Probably a vampire.”
	elsif ((age != real_age) && (!garlic || !health_ins)) || is_allergic_to_sunshine
		puts "#{name} is probably a vampire."

	#If the employee got their age right, and is willing to eat garlic bread or sign up for insurance, the result is “Probably not a vampire.”	
	elsif (age == real_age) && (garlic || health_ins) 
		puts "#{name} is probably not a vampire."
	
	#If the employee got their age wrong, hates garlic bread, and doesn’t want insurance, the result is “Almost certainly a vampire.”
	elsif (age != real_age) && !garlic && !health_ins
		puts "#{name} is almost certainly a vampire."
	
	#Otherwise, print “Results inconclusive.”	
	else
		puts "Results are inconclusive."
	end

	i+=1

end
puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."
