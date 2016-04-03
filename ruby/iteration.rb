#Release 0

def say_goodbye
  place = "Antarctica"
  puts "Goodbye"
  yield(place)
  puts "Visit us again!"
end

say_goodbye { |location| puts "from #{location}!"}
####################################################
#Release 1

p actors_characters = {Robert_Deniro: "Jimmy Conway", Sylvester_Stalone: "Rocky Balboa", Melanie_Griffith: "Tess McGill"}

p movies_we_like = ["Princess Bride", "Raging Bull", "The Usual Suspects"]

actors_characters.each do |actor, character|
  character = character.downcase
  p character
end

movies_we_like.each do |movie|
  movie = movie.upcase
  p movie
end

movies_we_like.map! {|movie| p movie.length}
p movies_we_like

##################################################
#Relase 2

# 1
test_hash = {abc: 13, def: 46, ghi: 78}
test_array = [1, 5, 14, 63, 34]

p test_hash.delete_if{|x, y| y < 40}

p test_array.delete_if{|x| x > 20}

# 2
test_hash = {abc: 13, def: 46, ghi: 78}
test_array = [1, 5, 14, 63, 34]

p test_hash.drop_while {|x, y| y > 50 }

p test_array.drop_while {|i| i < 20 }

# 3
test_hash = {abc: 13, def: 46, ghi: 78}
test_array = [1, 5, 14, 63, 34]

p test_hash.reject{|x,y| y < 20}
p test_hash.reject{|x,y| x != :def }

# 4
test_hash = {abc: 13, def: 46, ghi: 78}
test_array = [1, 5, 14, 63, 34]

p test_hash.keep_if{|x,y| x != :def}
p test_array.keep_if{|y| y > 10}