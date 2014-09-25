require 'sinatra'
require './lib/post'

# my_app.rb
class MyApp < Sinatra::Base

  # before do
  #   @posts = Post.all
  # end

  get "/" do #route/path on the url. a simple slash means homepage
    @posts = Post.all ##
    erb :index
  end

  get "/about" do
    @posts = Post.all ##
    erb :about
  end

  get "/:id" do
    params.inspect
  end

  get "/posts/:post_name" do
    post = params[:post_name]
    @posts = Post.all ##
    erb ("/posts/#{post}").to_sym
    # erb ("posts/#{params[:name]}").to_sym
  end

  get "/purple.jpg" do
    params[:coverpic]
  end

end
