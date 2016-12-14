# require gems
require 'sqlite3'


# create SQLite3 database
exercise_db = SQLite3::Database.new("lifts.db")
exercise_db.results_as_hash = true

# learn about fancy string delimiters
create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS lifts(
    id INTEGER PRIMARY KEY,
    date VARCHAR(255),
    lift VARCHAR(255),
    weight INT,
    reps INT
  )
SQL

exercise_db.execute(create_table_cmd)

# Create a workout
def create_workout(db, date, lift, weight, reps)
  db.execute("INSERT INTO lifts (date, lift, weight, reps) VALUES (?, ?, ?, ?)", [date, lift, weight, reps])
end

# Update a workout by id 
def update_workout(db, id, update, value)
  db.execute("UPDATE lifts SET #{update} = #{value} WHERE id = '#{id}'")
end

# Delete a workout by id
def delete_workout(db, id)
  db.execute("DELETE FROM lifts WHERE id = '#{id}'")
end

# List all workouts by specific date
def lifts_by_date(db, date)
  db.execute("SELECT * FROM lifts WHERE date = '#{date}'")
end

# List all workouts by specific exercise 
def lifts_by_exercise(db, lift)
  db.execute("SELECT * FROM lifts WHERE lift = '#{lift}'")
end

# List max weight lifted for specified exercise
def max_weight(db, lift)
  db.execute("SELECT date, lift, MAX(weight), reps FROM lifts WHERE lift = '#{lift}'")
end

# Calculate total weight of big three exercises (squats, deadlifts, bench press)
def big_three(db)
  max_weights = []
  max_weights.push(db.execute("SELECT MAX(weight) FROM lifts WHERE lift = 'squat'"))
  max_weights.push(db.execute("SELECT MAX(weight) FROM lifts WHERE lift = 'bench press'"))
  max_weights.push(db.execute("SELECT MAX(weight) FROM lifts WHERE lift = 'deadlift'"))
  max_weights
end

# List all input by descending date
def view_all_date(db)
  db.execute("SELECT * FROM lifts ORDER BY date DESC")
end

# List all input by descending id
def view_all_id(db)
  db.execute("SELECT * FROM lifts ORDER BY id DESC")
end

# User Interface
puts "Welcome to your Exercise Monitor!"

loop do
puts " "
puts "Please choose one of the following options:"
puts "1 - Add a new lift"
puts "2 - Update an existing lift"
puts "3 - Delete an existing lift"
puts "4 - View all lifts by specific date"
puts "5 - View all lifts by specific exercise"
puts "6 - View Max lift for specific exercise"
puts "7 - View Big 3 (sum of squat, deadlift, and bench press)"
puts "8 - View all"
puts "9 - exit"
puts " "

user_choice = gets.chomp.to_i

case user_choice 
when 1
  puts "Enter date (ex. 2016-12-31) or hit enter if workout was for today."
  date = gets.chomp
  if date.length > 2
    date = date
  else
    date = Date.today.to_s
  end

  puts "Please enter recent lift completed."
  lift = gets.chomp

  puts "Enter weight lifted."
  weight = gets.chomp.to_i

  puts "Enter number of reps completed."
  reps = gets.chomp.to_i

  create_workout(exercise_db, date, lift, weight, reps)

  list_lifts = lifts_by_exercise(exercise_db, lift)
  puts "Your current #{lift} stats:"
  list_lifts.each do |lift|
    puts "#{lift['date']}: #{lift['lift']} | #{lift['weight']} | #{lift['reps']}"
  end

when 2
  puts "Please select the ID number of the lift you would like to update:"
  all_lifts = view_all_id(exercise_db)
  all_lifts.each do |lift|
    puts "#{lift['id']}| #{lift['date']}: #{lift['lift']} | #{lift['weight']} | #{lift['reps']}"
  end
  update_id = gets.chomp.to_i

  puts "Would you like to update weight or reps?"
  update = gets.chomp
  if update == "weight"
    puts "Please enter a new weight"
     lift_value = gets.chomp.to_i
  else
    puts "Please enter a new number of reps"
     lift_value = gets.chomp.to_i
  end

  update_workout(exercise_db, update_id, update, lift_value)

when 3
  puts "Please select the ID number of the lift you would like to delete:"
  all_lifts = view_all_id(exercise_db)
  all_lifts.each do |lift|
    puts "#{lift['id']}| #{lift['date']}: #{lift['lift']} | #{lift['weight']} | #{lift['reps']}"
  end
  delete_id = gets.chomp.to_i
  delete_workout(exercise_db, delete_id)

when 4
  puts "Enter date (ex. 2016-12-31)"
  date = gets.chomp
  lifts_date = lifts_by_date(exercise_db, date)

  lifts_date.each do |date|
    puts "#{date['date']}: #{date['lift']} | #{date['weight']} | #{date['reps']}"
  end

when 5
  puts "Enter a lift to view all exercises"
  lift = gets.chomp
  list_lifts = lifts_by_exercise(exercise_db, lift)

  list_lifts.each do |lift|
    puts "#{lift['date']}: #{lift['lift']} | #{lift['weight']} | #{lift['reps']}"
  end

when 6
  puts "Enter lift to view max"
  lift = gets.chomp

  max = max_weight(exercise_db, lift)
  max.each do |max|
    puts "Your highest #{max['lift']} was #{max['MAX(weight)']} for #{max['reps']} reps on #{max['date']}."
  end

when 7
  all_three = big_three(exercise_db)
  sum_big_three = 0
  all_three.each do |x|
    sum_big_three += x[0][0]
  end
  puts "The sum of your big three lifts is #{sum_big_three} lbs."

when 8
  all_lifts = view_all_date(exercise_db)
  puts "All recorded lifts:"
  all_lifts.each do |lift|
    puts "#{lift['date']}: #{lift['lift']} | #{lift['weight']} | #{lift['reps']}"
  end
when 9 
  puts "Thanks for using Exercise Monitor"
  exit
else
  puts "Sorry, #{user_choice} is not a valid option."
end
end


