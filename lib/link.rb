require 'pg'
require './env'
require './lib/database_connection.rb'

class Link

  def self.connection
    if ENV['ENVIRONMENT'] == 'test'
      @con = DatabaseConnection.setup(DB_TEST)
    else
      @con = DatabaseConnection.setup(DB_NAME)
    end
  end

  def self.all
    links_data = @con.exec "SELECT url FROM links;"
    links_data.map{ |link| link['url'] }
  end

  def self.add(url)
    @con.exec("INSERT INTO links (url) VALUES('#{url}');")
  end

end

#test
