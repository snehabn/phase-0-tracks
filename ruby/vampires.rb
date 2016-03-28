
puts "How many employees would you like to process?"
num_employees = gets.chomp.to_i
i = 1
until i > num_employees
	puts 
	puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
	puts "Questionnaire for employee #{i}"
	puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
	puts "What is the employee's name?"
	name = gets.chomp.capitalize
	
	puts "How old is #{name}?"
	age = gets.chomp.to_i
	
	puts "What year was #{name} born? (E.g. 1984)"
	birth_year = gets.chomp.to_i
	
	garlic = ""
	until garlic == "yes" || garlic == "no"
		puts "Our company cafeteria serves garlic bread. Should we order some for #{name}? (yes/no)"
		garlic = gets.chomp.downcase
	end
	
	if garlic == "yes"
		garlic = true
	else
		garlic = false
	end
	
	health_ins = ""
	until health_ins == "yes" || health_ins == "no"
		puts "Would #{name} like to enroll in the company’s health insurance? (yes/no)"
		health_ins = gets.chomp.downcase
	end
	if health_ins == "yes"
		health_ins = true
	else
		health_ins = false
	end
	
	puts "What allergies does #{name} have? Please type 'done' when finished."
	allergies = gets.chomp.downcase
	is_allergic_to_sunshine = case allergies
	when "sunshine"
		true
	else
		false
	end
	
	until allergies == "done" || is_allergic_to_sunshine
		puts "What else?"
		allergies = gets.chomp.downcase
		if allergies == "sunshine"
			is_allergic_to_sunshine = true
			break
		end
	end
	
	real_age = (Time.now.year.to_i)-(birth_year)
	puts	
	if name.downcase == "drake cula" || name == "tu fang"
		puts "#{name} is definitely a vampire."
	elsif ((age != real_age) && (!garlic || !health_ins)) || is_allergic_to_sunshine
		puts "#{name} is probably a vampire."
	elsif (age == real_age) && (garlic || health_ins)
		puts "#{name} is probably not a vampire."
	elsif (age != real_age) && !garlic && !health_ins
		puts "#{name} is almost certainly a vampire."
	else
		puts "Results inconclusive."
	end

	i+=1

end
puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."
