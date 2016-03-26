# make a method to encrypt password

def encrypt(password)
  # split the string into individual characters
  pass_array = password.split("")
  #make and empty string to fill in with encrypted characters at the end of "for" loop
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
        end
    # stitch together the individual characters into a string and fill into empty string defined earlier   
    encrypt_password.concat(ord_num.chr).to_s
  end
# using 'p' to print the value of the final encrypted password. Note: using 'puts' called the result as a string, which could not be used by the following method.
p encrypt_password
end


def decrypt(password)
  pass_array = password.split("")
  decrypt_password = ""
  for i in pass_array
       ord_num = (i.ord-1)
        if ord_num == 96
          ord_num = 122
        end
       decrypt_password.concat(ord_num.chr).to_s
  end
p decrypt_password
end
