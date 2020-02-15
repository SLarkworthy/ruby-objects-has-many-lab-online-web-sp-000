class Author 
  attr_accessor :name 
  
  @@post_count = 0
  
  def initialize(name)
    @name = name
    @posts = []
  end
  
  def add_post(post)
    post.author = self
    @@song_count +=1
  end
  
end