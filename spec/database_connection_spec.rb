require 'database_connection'

describe DatabaseConnection do
  describe '#setup' do
    it 'should save database connection to @connection' do
      DatabaseConnection.setup(DB_TEST)
      expect(DatabaseConnection.database).not_to be(nil)
    end

    it 'should set up a connection through PG' do
      expect(PG).to receive(:connect).with(dbname: DB_TEST)
      DatabaseConnection.setup('bookmark_manager_test')
    end
  end
end
