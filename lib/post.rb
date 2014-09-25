class Post
  # Access posts (files within views/posts)
  # Attributes: title, url, filename, content
  def initialize(array)

  end
  # Read list of post files
  # Create an array of post objects with the attributes set
  # Post.all should give an array w/ post objects; Post.all => [post, post]

  def self.all
    Dir.glob("views/posts/*").each do |filepath|
      a = filepath.split("/")
      self.new(a)
    end
  end

end
