# require gems
require 'sqlite3'
require 'faker'

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

def create_workout(db, date, lift, weight, reps)
  db.execute("INSERT INTO lifts (date, lift, weight, reps) VALUES (?, ?, ?, ?)", [date, lift, weight, reps])
end

puts "Please select from the following:"
available_lifts = ["Squat", "Bench Press", "Deadlift", "OverHead Press", "Pullups", "Dips"]
count = 1
available_lifts.each do |lift|
  puts "Please enter #{count} for #{lift}."
  count +=1
end

puts "Please enter recent lift completed."
lift = gets.chomp

puts "Enter weight lifted."
weight = gets.chomp.to_i

puts "Enter number of reps completed."
reps = gets.chomp.to_i

date = Date.today.to_s

create_workout(exercise_db, date, lift, weight, reps)


