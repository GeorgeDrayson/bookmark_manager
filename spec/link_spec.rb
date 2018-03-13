require 'link'
require './lib/database_connection'

describe Link do
  before(:each) do
    DatabaseConnection.setup(DB_TEST)
  end

  describe '#all' do
    it 'should give an array' do
      expect(Link.all).to be_a Array
    end
  end

  describe '#all' do
    it 'should add a link' do
      Link.add("http://www.makersacademy.com/")
      expect(Link.all).to include("http://www.makersacademy.com/")
    end
  end

end
