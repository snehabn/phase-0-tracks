#Release 1

# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # split the string and set that to array
  # call upon the specific elements in the array, push to hash
  # set default quantity to 1
  # print the list to the console [can you use one of your other methods here?]
# output: print out hash

# Method to add an item to a list
# input: item name and optional quantity
# steps: assign/update the hash 
# output: print updated key and value pairs 

# Method to remove an item from the list
# input: string of key item to delete
# steps:
  # delete key/value pair from hash using input key
# output: updated grocery list hash

# Method to update the quantity of an item
# input: item name and quantity
# steps: 
 # check IF the item exists in the hash, ELSE give an error message
 # update the hash with the key, value pair
# output: updated grocery list hash

# Method to print a list and make it look pretty
# input: No input
# steps:
  # For each key/value pair print sentence for each item and its quantity
# output: # A series of strings describing items and their quantities in grocery list


@items_hash = {}

def create_list (items)
  items_arr = items.split(" ")
  p items_arr
  
  items_arr.each do |items|
    @items_hash[items] = 1
  p @items_hash
  end 
  # items_hash[items_arr[0]] = 1
  # p items_hash
end

def add_item (item, quantity)
  @items_hash[item] = quantity.to_i
  p @items_hash
end

def remove_item (item)
  @items_hash.delete(item)
  p @items_hash
end

def update_item (item, quantity)
  if @items_hash[item] == nil
    puts "Item does not exist; please add item if desired"
  else @items_hash[item] = quantity.to_i
  end
  p @items_hash
end

def print_grocery_list
  @items_hash.each do |item, quantity|
    puts "You have entered #{item}; you need #{quantity} of them"
  end
end


create_list("carrots apples cereal pizza")

add_item("celery", 1)

remove_item("carrots")

update_item("celery", 3)

update_item("grapes", 4)

print_grocery_list
