# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.

<<<<<<< HEAD
p "iNvEsTiGaTiOn".swapcase
# => “InVeStIgAtIoN”

p "zom".insert(1, "o")
# => “zoom”

p "enhance".center(15)
#=> “    enhance    ”

p "Stop! You’re under arrest!".upcase
# => “STOP! YOU’RE UNDER ARREST!”

p "the usual" << " suspects"
#=> “the usual suspects”

p " suspects".prepend("the usual")
#=> “the usual suspects”

p "The case of the disappearing last letter".chop
# => “The case of the disappearing last lette”

p "The mystery of the missing first letter".slice(1, 40)
# => “he mystery of the missing first letter”

p "Elementary  ,    my   dear      Watson!".squeeze(" ")
# => “Elementary, my dear Watson!”

p "z".ord
=======
# "iNvEsTiGaTiOn".<???>
# => “InVeStIgAtIoN”

# "zom".<???>
# => “zoom”

# "enhance".<???>
# => "    enhance    "

# "Stop! You’re under arrest!".<???>
# => "STOP! YOU’RE UNDER ARREST!"

# "the usual".<???>
#=> "the usual suspects"

# " suspects".<???>
# => "the usual suspects"

# "The case of the disappearing last letter".<???>
# => "The case of the disappearing last lette"

# "The mystery of the missing first letter".<???>
# => "he mystery of the missing first letter"

# "Elementary,    my   dear        Watson!".<???>
# => "Elementary, my dear Watson!"

# "z".<???>
>>>>>>> upstream/master
# => 122 
# (What is the significance of the number 122 in relation to the character z?)
# 122 is the character z's ASCII's dec number...the ordinance number

<<<<<<< HEAD
p "How many times does the letter ‘a’ appear in this string?".count("a")
#=> 4
=======
# "How many times does the letter 'a' appear in this string?".<???>
# => 4
>>>>>>> upstream/master
