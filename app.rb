require 'sinatra/base'
require_relative './lib/link.rb'

class BookmarkManager < Sinatra::Base

  get '/' do
    Link.connection
    @links = Link.all
    erb(:index)
  end

  run! if app_file == $0

end
