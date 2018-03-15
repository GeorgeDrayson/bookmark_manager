require 'link'
require './lib/database_connection'

describe Link do
  before(:each) do
    DatabaseConnection.setup(DB_TEST)
  end

  describe '.all' do
    it 'should give an array' do
      expect(Link.all).to be_a Array
    end

    it 'should give an array of instances of Link' do
      expect(Link.all[0]).to be_a Link
    end
  end

  describe '.add' do
    it 'should add a link' do
      Link.add("http://www.makersacademy.com/", 'Makers Academy')
      expect(Link.all[2].url).to include("http://www.makersacademy.com/")
    end
  end

  describe '.valid_url?' do
    it 'should know if a url is valid' do
      expect(Link.valid_url?("http://www.makersacademy.com/")).to eq true
    end

    it 'should know if a url is invalid' do
      expect(Link.valid_url?("asfsadaf")).to eq false
    end
  end

  describe '.delete' do
    it 'should delete a link' do
      Link.add("http://www.makersacademy.com/", 'Makers Academy')
      Link.delete(3)
      url = Link.all.map { |link| link.url }
      expect(url).not_to include("http://www.makersacademy.com/")
    end
  end




end
