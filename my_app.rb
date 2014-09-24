require 'sinatra'

# my_app.rb
class MyApp < Sinatra::Base

  get "/" do #route/path on the url. a simple slash means homepage
    erb :index
  end

  get "/about-me" do
    "I'm Holly"
  end

end
