
require_relative '../../config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/' do
  end

  get "/articles" do
    @articles = Article.all
  end

  get "/articles/new" do
    @article = Article.new
  end

  get "/articles/:id" do
    @article = Article.find_by(:id)
  end


end
