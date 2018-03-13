require 'sinatra/base'
require_relative './lib/link.rb'
require './database_connection_setup'

class BookmarkManager < Sinatra::Base

  get '/' do
    @links = Link.all
    erb(:index)
  end

  post '/add' do
    Link.add(params[:link_box])
    redirect to('/')
  end

  run! if app_file == $0

end
