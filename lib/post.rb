class Post
  # Access posts (files within views/posts)
  # Attributes: title, url, filename, content
  attr_accessor :title, :url

  def initialize(array)
    @title = array[-1].split(".")[0]
    @url = "/posts/#{@title}"
  end
  # Read list of post files
  # Create an array of post objects with the attributes set
  # Post.all should give an array w/ post objects; Post.all => [post, post]

  def self.all
    Dir.glob("views/posts/*").collect do |filepath|
      a = filepath.split("/")
      self.new(a)
    end
  end

end
