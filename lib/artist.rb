class Artist
    attr_accessor :name, :songs

    def initialize(name)
        @name = name
        @songs = []
    end

    def add_song(song)
        song.artist = self
    end
    
    def add_song_by_name(name)
        Song.new(name).artist = self
    end

    def self.song_count
        count_arr = Song.all.collect {|song| song.artist == self}
        count_arr.length
    end
end