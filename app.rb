require 'sinatra/base'
require_relative './lib/link.rb'
require './env'

class BookmarkManager < Sinatra::Base

  get '/' do
    Link.connection(DB_NAME)
    @links = Link.all
    erb(:index)
  end

  run! if app_file == $0

end
