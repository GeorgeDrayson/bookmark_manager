require 'pg'
require './env'

task :test_database_setup do

  puts 'Setting up test database'
  connection = PG.connect dbname: DB_TEST
  connection.exec("DELETE FROM links;")
  connection.exec("ALTER SEQUENCE links_id_seq RESTART WITH 1;")
  connection.exec("INSERT INTO links (url, title) VALUES('https://github.com/', 'Github');")
  connection.exec("INSERT INTO links (url, title) VALUES('https://www.google.co.uk/', 'Google');")
end

task :setup do
  [DB_NAME, DB_TEST].each do |database|
    connection = PG.connect
    connection.exec("CREATE DATABASE #{database};")
    connection = PG.connect dbname: database
    connection.exec("CREATE TABLE links (id SERIAL PRIMARY KEY, url VARCHAR(60), title VARCHAR(60) );" )
  end
end
