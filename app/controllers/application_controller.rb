
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
    erb :index
  end

  get "/articles/:id" do
    @article = Article.find_by(:id)
    erb :show
  end

  get "/articles/new" do
    @article = Article.new
    erb :new
  end

  post "/articles" do

  end

  get "/articles/:id/edit" do

  end

  patch "/articles/:id" do

  end
end
