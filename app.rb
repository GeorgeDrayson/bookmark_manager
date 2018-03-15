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
    flash[:warning] = "This is not a link" unless Link.add(params[:link_box], params[:title_box])
    redirect to('/')
  end

  post '/delete' do
    Link.delete(params[:id_to_delete].to_i)
    redirect to('/')
  end

  post '/update' do
    Link.update(params[:id_to_update].to_i)
    redirect to('/')
  end

  run! if app_file == $0

end
