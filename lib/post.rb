class Post
  attr_accessor :title, :author

  def initialize(title)
    @title = title
    @@all.push(self)
  end

  @@all = []

  def self.all
    @@all
  end

  def author_name
    if self.author
      self.author.name
    end
  end

end
