require 'pg'
require './env'

class Link

  def self.connection
    if ENV['ENVIRONMENT'] == 'test'
      @con = PG.connect :dbname => DB_TEST
    else
      @con = PG.connect :dbname => DB_NAME
    end
  end

  def self.all
    links_data = @con.exec "SELECT url FROM links;"
    links_data.map{ |link| link['url'] }
  end

end
