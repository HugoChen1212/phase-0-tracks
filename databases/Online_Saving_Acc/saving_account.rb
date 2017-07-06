require 'sqlite3'

OSA_db = SQLite3::Database.new("onlineSavingAccount.db")
OSA_db.results_as_hash = true

create_user_table = <<-SQL
  CREATE TABLE IF NOT EXISTS user(
  id INTEGER PRIMARY KEY,
  first_name VARCHAR(255),
  age INT
  )
  SQL

create_savingAccount_table = <<-SQL
  CREATE TABLE IF NOT EXISTS savingAccount(
  SA_id INTEGER PRIMARY KEY,
  deposit INT,
  transfer INT,
  date DATE,
  user_id int,
  FOREIGN KEY (user_id) REFERENCES user(id)
   )
   SQL

   OSA_db.execute(create_user_table)
   OSA_db.execute(create_savingAccount_table)



