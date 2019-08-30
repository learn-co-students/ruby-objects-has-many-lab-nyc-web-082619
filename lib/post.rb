require 'pry'
class Post 
    attr_accessor :name, :author
    attr_reader :title  

    @@all = []
    
    def initialize(title)
        @title = title 
        @name = name 
        @author = author 

        @@all << self 
    end
    

    
    def author_name
        if self.author == nil  
            nil
        else 
            self.author.name 
        end
    end

    def self.all
        @@all
    end

end
