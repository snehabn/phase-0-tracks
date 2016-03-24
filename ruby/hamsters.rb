loop {
  puts "Hello, and welcome to our adoption form. Please enter the information to help your small friend be adopted as quickly as possible."
  puts
  puts "What is your hamster's name?"
  hamster_name = gets.chomp.capitalize

  puts "What is #{hamster_name}'s volume level from 1 to 10?"
  volume = gets.chomp.to_i

  puts "What is #{hamster_name}'s fur color?"
  fur_color = gets.chomp.downcase

  puts "Is #{hamster_name} a good candidate for adoption? (y/n)"
  candidate = gets.chomp

  def to_boolean(candidate)
    if candidate == "y"
      candidate = true
    else candidate = false
    end
  end

  puts "How old is the hamster?"
  age = gets.chomp
  age = age.to_i

  if age == 0
    age = nil
  end

  if to_boolean(candidate) == true
    candidate = "a good candidate for adoption."
    else candidate = "not a good candidate for adoption. We're sorry to hear that, but hopefully they'll find a caring home anyways."
  end

  if age == nil
    age = "You are uncertain of #{hamster_name}'s age, but they have"
    else age = "#{hamster_name} is #{age} and has"
  end

  puts
  puts "Thank you for filling out this form! We hope #{hamster_name} is adopted quickly!"
  puts
  puts "Just to confirm we have listed the details that will be entered into our adoption database."
  puts
  puts "#{age} #{fur_color} fur, and a volume level of #{volume}. You have mentioned that #{hamster_name} is #{candidate}"
  puts
  puts "If this info looks correct, please enter 'y', if you'd like to change anything, please enter 'n'..."
  feedback = gets.chomp
  puts

  if feedback == "y"
    puts "Thanks for your time and we're sure your beautiful hamster will be adopted quickly.  Have a good day!  :)"
    break
  end
}
