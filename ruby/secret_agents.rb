# make a method to encrypt password

def encrypt(password)
  # split the string into individual characters
  pass_array = password.split("")
  # make and empty string to fill in with encrypted characters at the end of "for" loop
  encrypt_password = ""
# for each character of password
  for i in pass_array
      #increment ordinance number of character by 1 and set that equal to variable
       ord_num = (i.ord+1)
        # take into account edge cases and adjusting output to loop back to 'a' or 'z' in both lower and upper cases
        if ord_num == 123
           ord_num = 97
        elsif
          ord_num == 91
          ord_num = 65
        # additional elsif statement to avoid exclamation points being put into 'spaces' when encoded.
        elsif
          ord_num == 33
          ord_num = 32
        end
    # stitch together the individual characters into a string and fill into empty string defined earlier   
    encrypt_password.concat(ord_num.chr).to_s
  end
# using 'p' to print the value of the final encrypted password. Note: using 'puts' called the result as a string, which could not be used by the following method.
encrypt_password
end

# define a method for decrypting similar to encrypting a password. decrease the ordinance number by 1.
def decrypt(password)

  pass_array = password.split("")

  decrypt_password = ""
  
  for i in pass_array
       ord_num = (i.ord-1)
        if ord_num == 96
          ord_num = 122
        elsif
          ord_num == 64
          ord_num = 90
        elsif
         ord_num == 31
         ord_num = 32
        end
        decrypt_password.concat(ord_num.chr).to_s
   end
  decrypt_password
end

#Interface - ask for encrypt or decrypt choice.
puts "Hello agent, would you like to encrypt or decrypt a password?"
agent_input = gets.chomp

# set variable to end 'until' loop
valid_input = false

until valid_input

# Process user entry and run chosen method. Print result in a sentence. Update 'valid_input' to end loop.
# If the user input is to encrypt, use the encrypt method to run the password, else if the user wants to decrypt, use the decrypt method. 
# Otherwise ask the user to re-state their request.
  if agent_input.downcase == "encrypt"
      puts "Please enter passcode(s)."
      encrypt_passcode = gets.chomp
      puts "Here is your disguised password: #{encrypt(encrypt_passcode)}."
      valid_input = true
    elsif
    agent_input.downcase == "decrypt"
      puts "Please enter passcode(s)."
      decrypt_passcode = gets.chomp
      puts "Here is your restored password: #{decrypt(decrypt_passcode)}."
      valid_input = true
    else
    puts "Please re-enter your selection."
    agent_input = gets.chomp
  end
end

# decrypt(encrypt("password")) works because your are taking the string output from the encrypt method and inserting it into the decrypt method.
# the decrypt method and the encrypt methods only accept a string as input.

######################################################################################################################################
#My partner and I also initally tried to attempt this using a while method with index. We were having some trouble matching the index of the
#variable to the alphabetstring so we attended Ryan Milstead's office hours, where he suggested it may be more efficient to use the ASCII ordinance
#numbers to determine "index" of each character and then subtract or add one and return the resulting value.
#That is what we did for the above section and it worked really well.... Below is what we had been trying to troubleshoot.

# Define an encrypt method to advances every letter of a string one letter forward
def encrypt(password)
# initialize index (=0)
index = 0

# variable = string (and set up a variable = length of string.)
# puts "Please enter your password."
# password = gets.chomp.downcase

# write a while loop

# while the index is less than the variable length the loop will repeat
while index < password.length
  password[index] = password[index].next
  # add strings together
  index+=1
  # pass_array_2 = password.split("")
  # for i in pass_array = "z"
  #   print "a"
  # end
end
puts password
end

# output 

# alphabetstring = "abcdefghijklmnopqrstuvwxyz".split("")
# p arr = alphabetstring.index("w").to_i
# p arr_1 = arr - 1
# p alphabetstring[arr_1]