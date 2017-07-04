require 'sqlite3'

vote_db = SQLite3::Database.new( "register_vote.db" )

create_table_cmd = <<-SQL
CREATE TABLE IF NOT EXISTS user(
  id INTEGER PRIMARY KEY,
  name VARCHAR(255),
  driver_licence INT,
  under_eighteen boolean
 )
SQL

vote_db.execute(create_table_cmd)

def create_users(vote_db, name, driver_licence, under_eighteen)
  vote_db.execute("INSERT INTO user (name, driver_licence, under_eighteen) VALUES (?,?,?)", [name, driver_licence, under_eighteen])
end

puts "Hi everyone, welcome to vote your favor president!"
puts "Please register here and when your done type \"exit\"."
puts "Please enter your full name here."
name = gets.chomp
puts "Please enter your Driver licence number here."
driver_licence = gets.chomp.to_i
puts "Do you under eighteen? please type (yes or no)"
under_eighteen = gets.chomp

create_users(vote_db, name, driver_licence, under_eighteen)

# if under_eighteen == "yes"
#   puts "congratulation, you can vote now!"
# else
#   puts "Sorry you are under eighteen, and you are not able to register until you become eighteen."
# end