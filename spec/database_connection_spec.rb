require 'database_connection'

describe DatabaseConnection do
  describe '#setup' do
    it 'should save database connection to @connection' do
      connection = DatabaseConnection.setup(DB_TEST)
      expect(DatabaseConnection.database).to be(connection)
    end

    it 'should set up a connection through PG' do
      expect(PG).to receive(:connect).with(dbname: DB_TEST)
      DatabaseConnection.setup(DB_TEST)
    end
  end

  describe '#query' do
    it 'should execute show all  query given' do
      connection = DatabaseConnection.setup(DB_TEST)
      expect(connection).to receive(:exec).with('SELECT * FROM links;')
      DatabaseConnection.query('SELECT * FROM links;')
    end
  end
end
