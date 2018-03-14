require 'pg'
require './env'
require 'uri'

class Link

  attr_reader :url

  def initialize(url)
    @url = url
  end

  def self.all
    @instances = [] if !@instances
    @instances
  end

  def self.add(url)
    return false unless valid_url?(url)
    DatabaseConnection.query("INSERT INTO links (url) VALUES('#{url}');")
    @instances.push(Link.new(url))
  end

  def self.valid_url?(url)
    (url =~ /\A#{URI::regexp(['http', 'https'])}\z/) == 0
  end



end
