require 'pg'

puts 'Setting up test database'
connection = PG.connect dbname: DB_TEST
connection.exec("DELETE FROM links;")
connection.exec("INSERT INTO links (url) VALUES('https://github.com/');")
connection.exec("INSERT INTO links (url) VALUES('https://www.google.co.uk/');")
