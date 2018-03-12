require 'link'

describe Link do

  describe '#all' do
    it 'should give an array' do
      expect(Link.all).to be_a Array
    end
  end

end
