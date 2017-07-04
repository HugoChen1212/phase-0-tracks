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