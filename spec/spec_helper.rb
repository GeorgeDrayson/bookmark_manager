require './env'
require './database_connection_setup'
require 'rake'

Rake.application.load_rakefile

ENV['ENVIRONMENT'] = 'test'


require File.join(File.dirname(__FILE__), '..', 'app.rb')

require 'capybara'
require 'capybara/rspec'
require 'rspec'

Capybara.app = BookmarkManager

RSpec.configure do |config|
  config.before(:each) do
    Rake::Task['test_database_setup'].execute
  end
end
