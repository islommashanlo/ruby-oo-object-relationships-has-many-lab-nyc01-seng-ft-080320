class Author
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def posts
    Post.all.select do |p|
      p.author == self
    end
  end

  def add_post(post)
    post.author = self
  end

  def add_post_by_title(post_t)
    new_post = Post.new(post_t)
    new_post.author = self
  end

<<<<<<< HEAD
  def self.post_count
    Post.all.count
  end
=======
>>>>>>> 4289cd5f124e8a7d948853094ac3e3dc0d5ba23a

end
