require 'sqlite3'

OSA_db = SQLite3::Database.new("onlineSavingAccount.db")
OSA_db.results_as_hash = true

create_user_table = <<-SQL
  CREATE TABLE IF NOT EXISTS user(
  id INTEGER PRIMARY KEY,
  first_name VARCHAR(255),
  last_name VARCHAR (255),
  age INT
  )
  SQL

create_savingAccount_table = <<-SQL
  CREATE TABLE IF NOT EXISTS savingAccount(
  SA_id INTEGER PRIMARY KEY,
  deposit INT,
  transfer INT,
  date DATE,
  user_id INT,
  FOREIGN KEY (user_id) REFERENCES user(id)
   )
   SQL

   OSA_db.execute(create_user_table)
   OSA_db.execute(create_savingAccount_table)

def new_user(first_name, last_name, age)
  OSA_db.execute("INSERT INTO user (first_name, last_name, age) VALUES (?, ?, ?)", [first_name, last_name, age])
end

def first_entry(deposit, transfer, date, user_id)
  OSA_db.execute("INSERT INTO savingAccount (deposit, transfer, date, user_id) VALUES (?, ?, ?, ?)", [deposit, transfer, date, user_id])
end

def get_user_id(first_name, last_name)
  user_id = OSA_db.execute("SELECT id FROM user WHERE first_name = (?) and last_name = (?)", [first_name, last_name])
    user_id[0]['id']
end

#new_user("Hugo", "Chen", 21)
# id = get_user_id("Hugo", "Chen")
# puts "#{id}"
#first_entry(1000, 0, "2017-02-18", 1)

