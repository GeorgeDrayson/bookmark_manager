require 'pg'

class Link

  def self.connection(db_name)
    @con = PG.connect :dbname => db_name
  end

  def self.all
    links_data = @con.exec "SELECT url FROM links;"
    links_data.map{ |link| link['url'] }
  end

end
