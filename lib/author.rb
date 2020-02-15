class Author 
  attr_accessor :name 
  
  @@post_count = 0
  
  def initialize(name)
    @name = name
    @posts = []
  end
  
  def add_post(post)
    post.author = self
    @@post_count +=1
  end
  
  def posts
    Post.all.select {|post| post.author == self}
  end
  
   def add_song_by_name(name)
    song = Song.new(name)
    add_song(song)
    @@song_count +=1
  end
  
  def self.song_count
    @@song_count
  end
  
  
end