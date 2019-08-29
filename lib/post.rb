class Post
    attr_accessor :title
    attr_reader :author

    @@all = []

    def initialize(title)
        @title = title
        @@all << self
    end

    def self.all
        @@all
    end

    def author_name
        if @author
            @author.name
        end
    end

    def author=(author)
        @author = author
        author.posts << self
    end
end