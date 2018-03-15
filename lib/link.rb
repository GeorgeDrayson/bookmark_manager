require 'pg'
require './env'
require 'uri'

class Link

  attr_reader :url, :id, :title

  def initialize(id, url, title)
    @id = id
    @url = url
    @title = title
  end

  def self.all
    links_data = DatabaseConnection.query("SELECT * FROM links;")
    links_data.map { |link| Link.new(link['id'], link['url'], link['title']) }
  end

  def self.add(url, title)
    return false unless valid_url?(url)
    DatabaseConnection.query("INSERT INTO links (url, title) VALUES('#{url}', '#{title.gsub(/[']/, "''")}');")
  end

  def self.valid_url?(url)
    (url =~ /\A#{URI::regexp(['http', 'https'])}\z/) == 0
  end

  def self.delete(id)
    DatabaseConnection.query("DELETE FROM links WHERE id = #{id} ;")
  end

end
