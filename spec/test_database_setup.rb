require 'pg'

puts 'Setting up test database'
connection = PG.connect dbname: DB_TEST
connection.exec("DELETE FROM links;")
connection.exec("INSERT INTO links VALUES(1,'https://github.com/');")
connection.exec("INSERT INTO links VALUES(2,'https://www.google.co.uk/');")
