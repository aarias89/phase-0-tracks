#require  sqlite3,sql file
require 'sqlite3'


#load/open database
db = SQLite3::Database.open "restaurant.db"
db.results_as_hash = true

# view_data= <<-SQL
# SELECT name,avg_price,location FROM restaurants
# SQL

#Intro
def intro(db)
  puts " Welcome to your food guide\n here is a list of the restaurants:"
  puts "-" * 60
  do_action(db)
end
#actions(text)   case statement
def do_action(db)
  display_data(db)
  puts "What would you like to do:(add,delete,update,quit)?"
  action=gets.chomp.downcase
      case action
      when 'add'
        print "What is the name of the restaurant you would like to add?"
        name=gets.chomp
        if !restaurant_exists?(db,name)
          puts "#{name} already exists"
        else
          puts " What is the food's average price? "
          avg_price=gets.chomp.to_i
          puts "Which city is this restaurant located at?"
          location=gets.chomp
          puts "What type if cuisine is this?"
          type=gets.chomp
          add_restaurant(db,name,avg_price,location,type)
        end
         puts "#{name} has been added!"
          do_action(db)
      when 'delete'
        puts "Which restaurant would you like to delete?"
        name = gets.chomp
        if restaurant_exists?(db,name)==false
          puts "#{name} is not on the list of restaurants"
            do_action(db)
        else
          delete_restaurant(db,name)
          do_action(db)
        end
      when 'update'
         puts "Which restaurant would you like to update?"
        name = gets.chomp
        if restaurant_exists?(db,name)
          update_type(db,name)
        else
          puts "Restaurant #{name} doesn't exist"
          do_action
        end
      when 'quit'
        puts "Thank you!"
        return :quit
      else
        puts "\n I don't understand that command. \n"
      end
    end
#add_restaurant
def add_restaurant(db,name,avg_price,location,type)
  db.execute("INSERT INTO restaurants (name, avg_price, location,type) VALUES (?, ?, ?,?)", [name, avg_price, type])

end
#delete_restaurant

def restaurant_exists?(db,name)
  if db.execute("SELECT * from restaurants WHERE
    name =?", name)
    true
  else
    false
  end
end

def delete_restaurant(db,name)
    db.execute("DELETE FROM restaurants WHERE
    name= '#{name}'")
    puts "#{name} has been deleted."
end
#update_restaurant

def update_restaurant_name(db,name,new_name)
  db.execute("UPDATE restaurants SET name=? WHERE name='#{name}'",new_name)
  puts "#{new_name} has been updated!"
end

def update_restaurant_price(db,name,new_price)
  db.execute("UPDATE restaurants SET avg_price=? WHERE name='#{name}'",new_price)
  puts "#{name} has been updated!"
end

def update_restaurant_location(db,name,new_location)
  db.execute("UPDATE restaurants SET location=? Where name='#{name}'",new_location)
  puts "#{name} has been updated!"
end

def update_type(db,name)
  puts "What field would you like to update:(name,price,location)?"
  type=gets.chomp
  case type
  when 'name'
    puts "What is the new name:"
    new_name=gets.chomp
    update_restaurant_name(db,name,new_name)
    do_action(db)
  when 'price'
    puts "What is the new price:"
    new_price=gets.chomp.to_i
    update_restaurant_price(db,name,new_price)
    do_action(db)
  when 'location'
    puts "Where is it located:"
    new_location=gets.chomp
    update_restaurant_location(db,name,new_location)
    do_action(db)
  else
    puts"I don't understand"
    do_action(db)
  end
end

#filter_by ---if there's time
#goodbye

#Display data in database
def display_data(db)
saved_places=db.execute(
  "SELECT name,avg_price,location,restaurant_type.cuisine_type
FROM restaurants
JOIN restaurant_type
ON restaurants.type=restaurant_type.id")

saved_places.each do |restaurant|
  puts " #{restaurant['name']} | #{restaurant['avg_price']} | #{restaurant['location']} | #{restaurant['cuisine_type']} "
  end
  puts "-" * 60
end

intro(db)



