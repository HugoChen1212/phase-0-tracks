require 'sqlite3'

OSA_db = SQLite3::Database.new("onlineCheckingAccount.db")
OSA_db.results_as_hash = true

create_user_table = <<-SQL
  CREATE TABLE IF NOT EXISTS user(
  id INTEGER PRIMARY KEY,
  first_name VARCHAR(255),
  last_name VARCHAR (255),
  age INT
  )
  SQL

create_checkingAccount_table = <<-SQL
  CREATE TABLE IF NOT EXISTS checkingAccount(
  SA_id INTEGER PRIMARY KEY,
  deposit INT,
  transfer INT,
  date DATE,
  user_id INT,
  FOREIGN KEY (user_id) REFERENCES user(id)
   )
   SQL

   OSA_db.execute(create_user_table)
   OSA_db.execute(create_checkingAccount_table)

def new_user(first_name, last_name, age)
  OSA_db.execute("INSERT INTO user (first_name, last_name, age) VALUES (?, ?, ?)", [first_name, last_name, age])
end

def entry(deposit, transfer, date, user_id)
  OSA_db.execute("INSERT INTO checkingAccount (deposit, transfer, date, user_id) VALUES (?, ?, ?, ?)", [deposit, transfer, date, user_id])
end


def get_user_id(first_name, last_name)
  user_id = OSA_db.execute("SELECT id FROM user WHERE first_name = (?) and last_name = (?)", [first_name, last_name])
    user_id[0]['id']
end

def get_all_users_id
  all_id = []
  users_id = OSA_db.execute("SELECT id FROM user")
  users_id.each do |user_id|
    all_id << user_id['id']
  end
  return all_id
end

def get_recent_date(user_id)
     date = OSA_db.execute("SELECT date FROM checkingAccount WHERE user_id = (?) ORDER BY date DESC", [user_id])
    date[0]['date']
end

def total_deposit(user_id)
  total = 0
  deposits = OSA_db.execute("SELECT deposit FROM checkingAccount WHERE user_id = (?)", [user_id])
  deposits.each do |hash|
    total += hash['deposit']
  end
  return total
end

def total_transfer(user_id)
  total = 0
  transfers = OSA_db.execute("SELECT transfer FROM checkingAccount WHERE user_id = (?)", [user_id])
  transfers.each do |hash|
    total += hash['transfer']
  end
  return total
end

def total_amount(user_id)
  total_deposit(user_id) - total_transfer(user_id)
end


# Driver code
puts "Welcome to Hugo's Checking Online Bank!"

loop do
  puts "What would you like to do today?"
  puts "Please choose one \"new user\", \"entry\", \"bank statement\" or \"exit\" "
  input = gets.chomp
  if input == "new user"
    puts "welcome to sign up a new chekcing account."
    puts "For sign up account it will need little your personal information."
    puts "What is your first name?"
    first_name = gets.chomp
    puts "What is your last name?"
    last_name = gets.chomp
    puts "What is your age?"
    age = gets.chomp.to_i
    new_user(first_name, last_name, age)
    puts "Congratulation #{first_name}! Your account create successful!"
    puts "Your user id number is #{get_user_id(first_name, last_name)}"

  elsif input == "entry"
    puts "Welcome to your entry!"
    puts "How much do you want to deposit today?"
    deposit = gets.chomp.to_i
    puts "How much do you want to transfer today?"
    transfer = gets.chomp. to_i

    puts "Please enter the date of your entry (YYYY-MM-DD)."
    date = gets.chomp
    puts "Please enter your user id number."
    user_id = gets.chomp.to_i
      if transfer > total_amount(user_id)
        puts "Your transfer amount is more then you have, transfer can't process."
        transfer = 0
      end
    entry(deposit, transfer, date, user_id)

  elsif input == "bank statement"
    puts "Please enter your user id here inorder to view your bank statement."
    user_id = gets.chomp.to_i
    if get_all_users_id.include?(user_id)
      puts "Your recent day of entry is: $ #{get_recent_date(user_id)}"
      puts "You total deposit is: $ #{total_deposit(user_id)}"
      puts "You total transfer is: $ #{total_transfer(user_id)}"
      puts "Your total amount right now is: $ #{total_amount(user_id)}"
    else
      puts "There are no such user id, please try it again."
    end

  elsif input == "exit"
    puts "Thank you for using Hugo's Saving Online Bank, have a nice day!"
    break
  else
    puts "Please choose one \"new user\", \"first entry\", \"view bank statement\" or \"exit\" "
  end
end
