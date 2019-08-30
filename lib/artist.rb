class Artist 
    attr_accessor :name, :song

    @@all = []
    

    def initialize(name)
        @name = name
        @songs = []
        @@all << self
        
    end


    def songs
        Song.all.select {|song| song.artist == self}
    end
   
    def add_song(song_name)
        song_name.artist = self 
    end

    def add_song_by_name(song_name)
        song = Song.new(song_name)
        song.artist = self 
    end 

    def self.song_count
        Song.all.count 
    end

    def self.all
        @@all 
    end

    
end
