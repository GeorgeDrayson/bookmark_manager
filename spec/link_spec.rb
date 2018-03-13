require 'link'

describe Link do

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
