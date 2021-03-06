# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza") ' '
# steps:
  # create a initial hash
  #split items at every space,returns array
  #array goes in hash
  # set default quantity
  # print the list to the console [call last method]
# output: [hash]

def initial_list(items)
  grocery_cart={}
  items_array=items.split(' ')# [item1,item2]
  items_array.each{|item| grocery_cart[item]=1}
  grocery_cart
end
grocery_cart=initial_list("carrots apples cereal pizza")


# Method to add an item to a list
# input: list, item name, and optional quantity
# steps: items added=key,quantity=value
# output:hash{key:value}
def item_addition(grocery_cart,item,quantity=1)
  grocery_cart[item]=quantity
  p grocery_cart
end
item_addition(grocery_cart,"oranges","3")
item_addition(grocery_cart,"milk")

# Method to remove an item from the list
# input:list , item name
# steps:
  #look up specific list and select appropriate key:value pair to remove.
# output:updated hash.
def item_remove(grocery_cart,item)
  grocery_cart.delete(item)
  p grocery_cart
end
item_remove(grocery_cart,"carrots")

# Method to update the quantity of an item
# input:select list->item_name->new quantity.
# steps:
#properly select item in list(navigating to proper key:value pair)
#replace stored key value with new value.
# output: Updated hash with new value for specified key.
def new_quantity(grocery_cart,item,quantity)
  grocery_cart[item]=quantity
  p grocery_cart
end
new_quantity(grocery_cart,"oranges",5)
# Method to print a list and make it look pretty
# input:initial hash
# steps: differentiate items in hash as |key,value|, use string interpolation to print out a message with information provided by hash.
# output: puts out a string for each key:value pair.
def cart_print(grocery_cart)
    puts "Your cart contains:"
  grocery_cart.each do |item,quantity|
    puts "#{item} : #{quantity}"
  end
end
cart_print(grocery_cart)

=begin
  What did you learn about pseudocode from working on this challenge?
  - the way pseudocode is structured makes a huge difference when actually writing code. In the pseudocode,ask the right questions to help guide you to the right answers.

What are the tradeoffs of using arrays and hashes for this challeng
  -I decided to use arrays because i knew it would be easier to work with key value pairs when iterating through the contents.

What does a method return?
- a method returns the data that has been run through the block of code that is within the method.

What kind of things can you pass into methods as arguments?
strings,integers,booleans.

How can you pass information between methods?
store the information as a variable outside of the method to be used by another method.

What concepts were solidified in this challenge, and what concepts are still confusing?
the importance to pseudocoding, im still not 100% solid with the scopes of a method.

=end