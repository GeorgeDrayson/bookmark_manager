require 'pg'
require './env'


class Link

  def self.all
    links_data = DatabaseConnection.query("SELECT url FROM links;")
    links_data.map { |link| link['url'] }
  end

  def self.add(url)
    DatabaseConnection.query("INSERT INTO links (url) VALUES('#{url}');")
  end

end
