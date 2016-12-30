# require gems
require 'sinatra'
require 'sqlite3'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# write a basic GET route
# add a query parameter
# GET /
get '/' do
  "#{params[:name]} is #{params[:age]} years old."
end

# write a GET route with
# route parameters
get '/about/:person' do
  person = params[:person]
  "#{person} is a programmer, and #{person} is learning Sinatra."
end

get '/:person_1/loves/:person_2' do
  "#{params[:person_1]} loves #{params[:person_2]}"
end

# write a GET route that retrieves
# all student data
get '/students' do
  students = db.execute("SELECT * FROM students")
  response = ""
  students.each do |student|
    response << "ID: #{student['id']}<br>"
    response << "Name: #{student['name']}<br>"
    response << "Age: #{student['age']}<br>"
    response << "Campus: #{student['campus']}<br><br>"
  end
  response
end

# write a GET route that retrieves
# a particular student

get '/students/:id' do
  student = db.execute("SELECT * FROM students WHERE id=?", [params[:id]])[0]
  student.to_s
end

# Release 0: Add Routes
# write a GET route that prints
# an address

get '/contact/:number/:street/:city/:state/:zip' do
  number = params[:number]
  street = params[:street]
  city = params[:city]
  state = params[:state]
  zip = params[:zip]
  "#{number} #{street}<br>#{city}, #{state} #{zip}<br>"
end

# write a GET route that takes person's name
# prints "Good job, [name]!"

get '/great_job/:name' do
  student = db.execute("SELECT * FROM students WHERE name=?", [params[:name]])[0]
  student.to_s
  if student
    "Good job, #{student["name"]}!"
  else
    "Good job!"
  end
end

# add two numbers together
get '/add/:number_1/:number_2' do
  number_1 = params[:number_1]
  number_2 = params[:number_2]

  total = number_1.to_i + number_2.to_i

  "#{number_1} + #{number_2} = #{total}"
end

