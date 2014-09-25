require 'sinatra'

# my_app.rb
class MyApp < Sinatra::Base

  get "/" do #route/path on the url. a simple slash means homepage
    erb :index
  end

  get "/about" do
    erb :about
  end

  get "/:id" do
    params.inspect
  end

  get "/posts/:post_name" do
    post = params[:post_name]
    erb ("/posts/#{post}").to_sym
  end

  get "/purple.jpg" do
    params[:coverpic]
  end

end
