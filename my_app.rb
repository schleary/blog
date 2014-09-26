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

  get "/macbook_air_wood_desk.jpg" do
    params[:postpic]
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

  #making a post puts content in body instead of in url
  # redirect sends back to method above. always does a get request
  post "/contact" do
    redirect to ("/contact")
  end

  

end
