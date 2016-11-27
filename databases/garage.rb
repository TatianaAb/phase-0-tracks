# Parking garage DATABASE!

# require gems
require 'sqlite3'

# create SQLite3 database
db = SQLite3::Database.new("garage.db")

create_table = <<-SQL
  CREATE TABLE IF NOT EXISTS garage(
    id INTEGER PRIMARY KEY,
    make VARCHAR(255),
    model VARCHAR(255),
    color VARCHAR(255),
    floor INT,
    spot INT
  )
SQL

# create garage table (if it's not there already)
db.execute(create_table)

# add a car to garage

def park_car(db, floor_number)
  puts "Please enter make of car"
  make = gets.chomp
  puts "Please enter model of car"
  model = gets.chomp
  puts "Please enter color of car"
  color = gets.chomp
  puts "Please choose available  spot on #{floor_number} floor"
  spot = gets.chomp
  
  db.execute("INSERT INTO garage (make, model, color, floor, spot) VALUES (?, ?, ?, ?, ?)", [make, model, color, floor_number, spot])
  puts "Thank you for choosing our garage, take your ticket"
end

def pick_up_car (db, spot_number)
  db.execute ("DELETE FROM garage WHERE spot = #{spot_number}")
end

first_floor = db.execute("SELECT spot FROM garage WHERE floor = 1")
second_floor = db.execute("SELECT spot FROM garage WHERE floor = 2")

puts "Would you like to park or pick up a car?"
answer = gets.chomp

if answer == 'park'
  if first_floor.length < 2
    floor_number = 1
    park_car(db, floor_number)
  elsif second_floor.length < 2
    floor_number = 2
    park_car(db, floor_number)
  else
    puts "Sorry garage is full!"
  end

elsif answer == 'pick up'
  puts "Please enter spot_number from ticket"
  spot_number = gets.chomp
  pick_up_car(db, spot_number)
end

# Check availability
# p db.execute("SELECT floor, spot FROM garage")

