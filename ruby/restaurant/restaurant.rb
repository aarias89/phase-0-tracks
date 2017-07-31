#require  sqlite3,sql file
require 'sqlite3'



db = SQLite3::Database.open "restaurant.db"
db.results_as_hash = true
view_data= <<-SQL
SELECT name,avg_price,location FROM restaurants
SQL

#Intro
def intro(text)
  puts
end
#actions(text)   case statement
#add_restaurant
#delete_restaurant
#update_restaurant
#filter_by ---if there's time
#goodbye

#Display data in database
def display_data(db)
saved_places=db.execute("SELECT         name,avg_price,location FROM restaurants
   SQL")
saved_places.each do |restaurant|
  puts " #{restaurant['name']}|#{restaurant['avg_price']}|#{restaurant['location']} "
  end
end

display_data(db)

