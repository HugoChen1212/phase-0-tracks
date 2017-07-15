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
  student = db.execute("SELECT campus FROM students WHERE id=?", [params[:id]])[0]
  student.to_s
end

get '/:house_num/:street/:city/:state' do
 house_num = params[:house_num]
 street = params[:street]
 city = params[:city]
 state = params[:state]
  "Your address is: #{house_num} #{street} #{city}, #{state}"
end

get '/contact' do
   "Your address is:<br> 376 Arch street <br> San Francisco, CA 94622"
end

get '/great_job/:name' do
  names = db.execute("SELECT name FROM students")
  arr=[]
  names.each do |name|
   arr << name[0]
  end
if arr.include? (params[:name])
  "Good job, #{params[:name]}"
  else
    "Good job!"
  end
end

get '/twonum/:num1/:num2' do
  total = params[:num1].to_i + params[:num2].to_i
  "Total will be: #{total}."
end