require 'sinatra'
require './lib/post'

class MyApp < Sinatra::Base

  # before do
  #   @posts = Post.all
  # end

  get "/purple.jpg" do
    params[:coverpic]
  end

  get "/" do
    @posts = Post.all ##
    erb :index
  end

  get "/posts/:post_name" do
    post = params[:post_name]
    @posts = Post.all ##
    erb ("/posts/#{post}").to_sym
  end

  get "/posts" do
    @posts = Post.all
    erb :posts
  end

  get "/about" do
    @posts = Post.all ##
    erb :about
  end



  get "/contact" do
    @posts = Post.all ##
    erb :contact
  end

end
