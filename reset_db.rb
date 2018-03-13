require 'pg'
require './env'

connection = PG.connect dbname: DB_NAME
connection.exec("DELETE FROM links;")
connection.exec("ALTER SEQUENCE links_id_seq RESTART WITH 1;")
