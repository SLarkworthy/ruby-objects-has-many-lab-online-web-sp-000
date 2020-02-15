class author 
  attr_accessor :name 
  
  def initialize(name)
    @name = name
    @posts = []
  end
  
  def add_post(post)
    post.author = self
    @@song_count +=1
  end
  
end