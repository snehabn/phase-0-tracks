# Define an encrypt method to advances every letter of a string one letter forward

# initialize index (=0)
index = 0

# variable = string (and set up a variable = length of string.)
puts "Please enter your password."
password = gets.chomp

# write a while loop

# while the index is less than the variable length the loop will repeat
while index < password.length
  password[index] = password[index].next
  # add strings together
  index+=1
end

puts password
# output 
