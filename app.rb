require 'sinatra/base'
require 'sinatra/flash'
require_relative './lib/link.rb'
require './database_connection_setup'
require 'uri'

class BookmarkManager < Sinatra::Base
  enable :sessions
  register Sinatra::Flash

  get '/' do
    @links = Link.all
    erb(:index)
  end

  post '/add' do
    flash[:warning] = "This is not a link" unless Link.add(params[:link_box])
    redirect to('/')
  end

  run! if app_file == $0

end
