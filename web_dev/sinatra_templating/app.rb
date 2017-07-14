# require gems
require 'sinatra'
require 'sqlite3'

set :public_folder, File.dirname(__FILE__) + '/static'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# show students on the home page
get '/' do
  @students = db.execute("SELECT * FROM students")
  erb :home
end

get '/students/new' do
  erb :new_student
end

get '/students/about' do
  @students = db.execute("SELECT * FROM students")
  erb :about
end

# create new students via
# a form
get '/students' do
  db.execute("INSERT INTO students (name, campus, age) VALUES (?,?,?)", [params['name'], params['campus'], params['age'].to_i])
  redirect '/'
end

get '/students/form' do
  erb :campuses
end

post '/about/table' do
  p params
  db.execute("insert into campuses (campus) values (?)",[params['campus']])
   redirect '/students/campus'
end

get '/students/campus' do
  @campuses = db.execute("SELECT * FROM campuses")
  erb :new_campuses
end

